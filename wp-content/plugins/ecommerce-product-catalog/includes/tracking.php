<?php

if ( !defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

/**
 * Tracking functions for reporting plugin usage to the implecode site for users that have opted in
 *
 * @version        1.1.1
 * @package        ecommerce-product-catalog/includes
 * @author        Norbert Dreszer
 */

/**
 * Usage tracking
 *
 * @access public
 * @since  2.7.2
 * @return void
 */
class IC_EPC_Tracking {

	/**
	 * The data to send to the IC site
	 *
	 * @access private
	 */
	private $data;

	/**
	 * Get things going
	 *
	 * @access public
	 */
	public function __construct() {

		add_action( 'init', array( $this, 'schedule_send' ) );
		add_action( 'pre_update_option_ic_epc_allow_tracking', array( $this, 'check_for_settings_optin' ) );
		add_action( 'ic_epc_opt_into_tracking', array( $this, 'check_for_optin' ) );
		add_action( 'ic_epc_opt_out_of_tracking', array( $this, 'check_for_optout' ) );
		add_action( 'admin_notices', array( $this, 'admin_notice' ) );
		add_action( 'ic_system_tools', array( $this, 'settings_optin' ) );
	}

	/**
	 * Check if the user has opted into tracking
	 *
	 * @access private
	 * @return bool
	 */
	private function tracking_allowed() {
		return (bool) get_option( 'ic_epc_allow_tracking', false );
	}

	/**
	 * Setup the data that is going to be tracked
	 *
	 * @access private
	 * @return void
	 */
	private function setup_data() {

		$data = array();

		$data[ 'php_version' ]		 = phpversion();
		$data[ 'plugin_name' ]		 = IC_CATALOG_PLUGIN_NAME;
		$data[ 'plugin_version' ]	 = IC_EPC_VERSION;
		$data[ 'wp_version' ]		 = get_bloginfo( 'version' );
		$data[ 'server' ]			 = isset( $_SERVER[ 'SERVER_SOFTWARE' ] ) ? $_SERVER[ 'SERVER_SOFTWARE' ] : '';

		$data[ 'install_ver' ] = (string) get_option( 'first_activation_version', 'not set' );

		$data[ 'multisite' ] = is_multisite();
		$data[ 'url' ]		 = home_url();

		// Retrieve current theme info
		$theme_data		 = wp_get_theme();
		$theme			 = $theme_data->Name . ' ' . $theme_data->Version;
		$data[ 'theme' ] = $theme;

		//$data[ 'email' ]	 = get_bloginfo( 'admin_email' );
		// Retrieve current plugin information
		if ( !function_exists( 'get_plugins' ) ) {
			include ABSPATH . '/wp-admin/includes/plugin.php';
		}

		$plugins		 = array_keys( get_plugins() );
		$active_plugins	 = get_option( 'active_plugins', array() );

		foreach ( $plugins as $key => $plugin ) {
			if ( in_array( $plugin, $active_plugins ) ) {
				// Remove active plugins from list so we can show active and inactive separately
				unset( $plugins[ $key ] );
			}
		}

		$data[ 'active_plugins' ]	 = $active_plugins;
		$data[ 'inactive_plugins' ]	 = $plugins;
		$data[ 'products' ]			 = ic_products_count();
		$names						 = get_catalog_names();
		$data[ 'product_label' ]	 = $names[ 'singular' ];
		$data[ 'locale' ]			 = ( $data[ 'wp_version' ] >= 4.7 ) ? get_user_locale() : get_locale();

		$this->data = $data;
	}

	/**
	 * Send the data to the EDD server
	 *
	 * @access private
	 * @return void
	 */
	public function send_checkin( $override = false, $ignore_last_checkin = false ) {

		$home_url = trailingslashit( home_url() );
		// Allows us to stop our own site from checking in, and a filter for our additional sites
		if ( $home_url === 'https://implecode.com/' || apply_filters( 'ic_epc_disable_tracking_checkin', false ) ) {
			return false;
		}

		if ( !$this->tracking_allowed() && !$override ) {
			return false;
		}

		// Send a maximum of once per week
		$last_send = $this->get_last_send();
		if ( is_numeric( $last_send ) && $last_send > strtotime( '-1 week' ) && !$ignore_last_checkin ) {
			return false;
		}

		$this->setup_data();

		$request = wp_remote_post( 'http://check.implecode.com/?ic_epc_action=checkin', array(
			'method'		 => 'POST',
			'timeout'		 => 20,
			'redirection'	 => 5,
			'httpversion'	 => '1.1',
			'blocking'		 => true,
			'body'			 => $this->data,
			'sslverify'		 => false,
			'user-agent'	 => 'IC_EPC/' . IC_EPC_VERSION . '; ' . get_bloginfo( 'url' )
		) );

		if ( is_wp_error( $request ) ) {
			return $request;
		}

		update_option( 'ic_epc_tracking_last_send', time() );

		return true;
	}

	/**
	 * Check for a new opt-in on settings save
	 *
	 *
	 * @access public
	 * @return array
	 */
	public function check_for_settings_optin( $input ) {
		// Send an intial check in on settings save

		if ( !empty( $input ) ) {
			$this->send_checkin( true );
		}

		return $input;
	}

	/**
	 * Show system tools checkbox
	 *
	 *
	 * @access public
	 * @return array
	 */
	public function settings_optin() {
		$checked = $this->tracking_allowed() ? 1 : 0;
		implecode_settings_checkbox( __( 'Send anonymous statistics', 'ecommerce-product-catalog' ), 'epc_allow_tracking', $checked );
	}

	/**
	 * Check for a new opt-in via the admin notice
	 *
	 * @access public
	 * @return void
	 */
	public function check_for_optin( $data ) {

		update_option( 'ic_epc_allow_tracking', 1 );

		$this->send_checkin( true );

		update_option( 'ic_epc_tracking_notice', '1' );
	}

	/**
	 * Check for a new opt-in via the admin notice
	 *
	 * @access public
	 * @return void
	 */
	public function check_for_optout( $data ) {
		delete_option( 'ic_epc_allow_tracking' );
		update_option( 'ic_epc_tracking_notice', '1' );
		wp_redirect( remove_query_arg( 'ic_epc_action' ) );
		exit;
	}

	/**
	 * Get the last time a checkin was sent
	 *
	 * @access private
	 * @return false|string
	 */
	private function get_last_send() {
		return get_option( 'ic_epc_tracking_last_send' );
	}

	/**
	 * Schedule a weekly checkin
	 *
	 * @access public
	 * @return void
	 */
	public function schedule_send() {
		// We send once a week (while tracking is allowed) to check in, which can be used to determine active sites
		add_action( 'ic_epc_weekly_scheduled_events', array( $this, 'send_checkin' ) );
	}

	/**
	 * Display the admin notice to users that have not opted-in or out
	 *
	 * @access public
	 * @return void
	 */
	public function admin_notice() {
		$hide_notice = get_option( 'ic_epc_tracking_notice' );

		if ( $hide_notice ) {
			return;
		}

		if ( get_option( 'ic_epc_allow_tracking', false ) ) {
			return;
		}

		if ( !current_user_can( 'manage_options' ) ) {
			return;
		}

		if (
		stristr( network_site_url( '/' ), 'dev' ) !== false ||
		stristr( network_site_url( '/' ), 'localhost' ) !== false ||
		stristr( network_site_url( '/' ), ':8888' ) !== false // This is common with MAMP on OS X
		) {
			update_option( 'ic_epc_tracking_notice', '1' );
		} else {
			$optin_url	 = add_query_arg( 'ic_epc_action', 'opt_into_tracking' );
			$optout_url	 = add_query_arg( 'ic_epc_action', 'opt_out_of_tracking' );

			echo '<div class="updated"><p>';
			echo sprintf( __( 'Allow %s to track plugin usage? Opt-in to tracking to help in plugin development. No sensitive data is tracked.', 'ecommerce-product-catalog' ), IC_CATALOG_PLUGIN_NAME );
			echo '&nbsp;<a href="' . esc_url( $optin_url ) . '" class="button-primary">' . __( 'Allow', 'ecommerce-product-catalog' ) . '</a>';
			echo '&nbsp;<a href="' . esc_url( $optout_url ) . '" class="button-secondary">' . __( 'Do not allow', 'ecommerce-product-catalog' ) . '</a>';
			echo '</p></div>';
		}
	}

}

add_action( 'init', 'ic_epc_get_actions' );

function ic_epc_get_actions() {
	if ( isset( $_GET[ 'ic_epc_action' ] ) ) {
		do_action( 'ic_epc_' . $_GET[ 'ic_epc_action' ], $_GET );
	}
}

$ic_epc_tracking = new IC_EPC_Tracking;

<?php
/*
Plugin Name: Bulk Price Converter for WooCommerce
Plugin URI: http://coder.fm/item/bulk-price-converter-for-woocommerce-plugin/
Description: Bulk Price Converter for WooCommerce.
Version: 1.2.0
Author: Algoritmika Ltd
Author URI: http://www.algoritmika.com
Copyright: © 2017 Algoritmika Ltd.
License: GNU General Public License v3.0
License URI: http://www.gnu.org/licenses/gpl-3.0.html
*/

// Exit if accessed directly
if ( ! defined( 'ABSPATH' ) ) exit;

// Check if WooCommerce is active
$plugin = 'woocommerce/woocommerce.php';
if (
	! in_array( $plugin, apply_filters( 'active_plugins', get_option( 'active_plugins', array() ) ) ) &&
	! ( is_multisite() && array_key_exists( $plugin, get_site_option( 'active_sitewide_plugins', array() ) ) )
) {
	return;
}

if ( 'bulk-price-converter-for-woocommerce.php' === basename( __FILE__ ) ) {
	// Check if Pro is active, if so then return
	$plugin = 'bulk-price-converter-for-woocommerce-pro/bulk-price-converter-for-woocommerce-pro.php';
	if (
		in_array( $plugin, apply_filters( 'active_plugins', get_option( 'active_plugins', array() ) ) ) ||
		( is_multisite() && array_key_exists( $plugin, get_site_option( 'active_sitewide_plugins', array() ) ) )
	) {
		return;
	}
}

if ( ! class_exists( 'Alg_WC_Bulk_Price_Converter' ) ) :

/**
 * Main Alg_WC_Bulk_Price_Converter Class
 *
 * @class   Alg_WC_Bulk_Price_Converter
 * @version 1.2.0
 */

final class Alg_WC_Bulk_Price_Converter {

	/**
	 * Plugin version.
	 *
	 * @var   string
	 * @since 1.2.0
	 */
	public $version = '1.2.0';

	/**
	 * @var Alg_WC_Bulk_Price_Converter The single instance of the class
	 */
	protected static $_instance = null;

	/**
	 * Main Alg_WC_Bulk_Price_Converter Instance
	 *
	 * Ensures only one instance of Alg_WC_Bulk_Price_Converter is loaded or can be loaded.
	 *
	 * @static
	 * @return Alg_WC_Bulk_Price_Converter - Main instance
	 */
	public static function instance() {
		if ( is_null( self::$_instance ) ) {
			self::$_instance = new self();
		}
		return self::$_instance;
	}

	/**
	 * Alg_WC_Bulk_Price_Converter Constructor.
	 *
	 * @version 1.2.0
	 * @access  public
	 */
	public function __construct() {

		// Set up localisation
		load_plugin_textdomain( 'alg-wc-bulk-price-converter', false, dirname( plugin_basename( __FILE__ ) ) . '/langs/' );

		// Include required files
		$this->includes();

		// Settings & Scripts
		if ( is_admin() ) {
			add_filter( 'woocommerce_get_settings_pages', array( $this, 'add_woocommerce_settings_tab' ) );
			add_filter( 'plugin_action_links_' . plugin_basename( __FILE__ ), array( $this, 'action_links' ) );
		}
	}

	/**
	 * Show action links on the plugin screen
	 *
	 * @param   mixed $links
	 * @return  array
	 */
	public function action_links( $links ) {
		return array_merge( array(
			'<a href="' . admin_url( 'admin.php?page=wc-settings&tab=alg_wc_bulk_price_converter' )      . '">' . __( 'Settings', 'woocommerce' )   . '</a>',
			'<a href="' . esc_url( 'http://coder.fm/item/bulk-price-converter-for-woocommerce-plugin/' ) . '">' . __( 'Unlock all', 'woocommerce' ) . '</a>',
		), $links );
	}

	/**
	 * Include required core files used in admin and on the frontend.
	 *
	 * @version 1.2.0
	 */
	private function includes() {
		// Settings
		require_once( 'includes/admin/class-alg-wc-bulk-price-converter-settings-section.php' );
		$settings = array();
		$settings[] = require_once( 'includes/admin/class-alg-wc-bulk-price-converter-settings-general.php' );
		if ( is_admin() && get_option( 'alg_wc_bulk_price_converter_version', '' ) !== $this->version ) {
			foreach ( $settings as $section ) {
				foreach ( $section->get_settings() as $value ) {
					if ( isset( $value['default'] ) && isset( $value['id'] ) ) {
						add_option( $value['id'], $value['default'], '', 'no' );
					}
				}
			}
			update_option( 'alg_wc_bulk_price_converter_version', $this->version );
		}
		// Core
		require_once( 'includes/class-alg-wc-bulk-price-converter.php' );
	}

	/**
	 * Add Bulk Price Converter settings tab to WooCommerce settings.
	 */
	public function add_woocommerce_settings_tab( $settings ) {
		$settings[] = include( 'includes/admin/class-wc-settings-bulk-price-converter.php' );
		return $settings;
	}

	/**
	 * Get the plugin url.
	 *
	 * @return string
	 */
	public function plugin_url() {
		return untrailingslashit( plugin_dir_url( __FILE__ ) );
	}

	/**
	 * Get the plugin path.
	 *
	 * @return string
	 */
	public function plugin_path() {
		return untrailingslashit( plugin_dir_path( __FILE__ ) );
	}

}

endif;

if ( ! function_exists( 'alg_wc_bulk_price_converter' ) ) {
	/**
	 * Returns the main instance of Alg_WC_Bulk_Price_Converter to prevent the need to use globals.
	 *
	 * @return Alg_WC_Bulk_Price_Converter
	 */
	function alg_wc_bulk_price_converter() {
		return Alg_WC_Bulk_Price_Converter::instance();
	}
}

alg_wc_bulk_price_converter();

<?php
if ( ! defined( 'ABSPATH' ) ) exit;
/*
Plugin Name: Xendit Woocommerce Gateway
Plugin URI: #
Description: Accept payments in Indonesia with Xendit. Seamlessly integrated into WooCommerce.
Version: 1.0
Author: Xendit
Author URI: #
*/

/**
 * Required minimums and constants
 */
define( 'WC_XENDIT_VERSION', '1.0.0' );
define( 'WC_XENDIT_MIN_PHP_VER', '5.6.0' );
define( 'WC_XENDIT_MIN_WC_VER', '2.5.0' );
define( 'WC_XENDIT_MAIN_FILE', __FILE__ );
define( 'WC_XENDIT_PLUGIN_URL', untrailingslashit( plugins_url( basename( plugin_dir_path( __FILE__ ) ), basename( __FILE__ ) ) ) );
define( 'WC_XENDIT_PLUGIN_PATH', untrailingslashit( plugin_dir_path( __FILE__ ) ) );

if ( ! class_exists( 'WC_Xendit' ) ) :

	class WC_Xendit {
        /**
		 * @var Singleton The reference the *Singleton* instance of this class
		 */
		private static $instance;

		/**
		 * @var Reference to logging class.
		 */
		private static $log;

		/**
		 * Returns the *Singleton* instance of this class.
		 *
		 * @return Singleton The *Singleton* instance.
		 */
		public static function get_instance() {
			if ( null === self::$instance ) {
				self::$instance = new self();
			}
			return self::$instance;
		}

		/**
		 * Private clone method to prevent cloning of the instance of the
		 * *Singleton* instance.
		 *
		 * @return void
		 */
		private function __clone() {}

		/**
		 * Private unserialize method to prevent unserializing of the *Singleton*
		 * instance.
		 *
		 * @return void
		 */
		private function __wakeup() {}

		/**
		 * Flag to indicate whether or not we need to load code for / support subscriptions.
		 *
		 * @var bool
		 */
		private $subscription_support_enabled = false;

		/**
		 * Flag to indicate whether or not we need to load support for pre-orders.
		 *
		 * @since 3.0.3
		 *
		 * @var bool
		 */
		private $pre_order_enabled = false;

		/**
		 * Notices (array)
		 * @var array
		 */
		public $notices = array();

		/**
		 * Protected constructor to prevent creating a new instance of the
		 * *Singleton* via the `new` operator from outside of this class.
		 */
		protected function __construct() {
			add_action( 'admin_init', array( $this, 'check_environment' ) );
			add_action( 'ices', array( $this, 'admin_notices' ), 15 );
			add_action( 'plugins_loaded', array( $this, 'init' ) );
		}

		/**
		 * Init the plugin after plugins_loaded so environment variables are set.
		 */
		public function init() {
			// Don't hook anything else in the plugin if we're in an incompatible environment
			if ( self::get_environment_warning() ) {
				return;
			}

			include_once( dirname( __FILE__ ) . '/includes/class-wc-xendit-api.php' );

			// Init the gateway itself
			$this->init_gateways();

			add_filter( 'plugin_action_links_' . plugin_basename( __FILE__ ), array( $this, 'plugin_action_links' ) );
			add_action( 'woocommerce_order_status_on-hold_to_processing', array( $this, 'capture_payment' ) );
			add_action( 'woocommerce_order_status_on-hold_to_completed', array( $this, 'capture_payment' ) );
			add_action( 'woocommerce_order_status_on-hold_to_cancelled', array( $this, 'cancel_payment' ) );
			add_action( 'woocommerce_order_status_on-hold_to_refunded', array( $this, 'cancel_payment' ) );
			// add_filter( 'woocommerce_get_customer_payment_tokens', array( $this, 'woocommerce_get_customer_payment_tokens' ), 10, 3 );
			add_action( 'woocommerce_payment_token_deleted', array( $this, 'woocommerce_payment_token_deleted' ), 10, 2 );
			add_action( 'woocommerce_payment_token_set_default', array( $this, 'woocommerce_payment_token_set_default' ) );
			add_action( 'wp_ajax_xendit_dismiss_request_api_notice', array( $this, 'dismiss_request_api_notice' ) );
		}


		/**
		 * Allow this class and other classes to add slug keyed notices (to avoid duplication)
		 */
		public function add_admin_notice( $slug, $class, $message ) {
			$this->notices[ $slug ] = array(
				'class'   => $class,
				'message' => $message,
			);
		}

		/**
		 * The backup sanity check, in case the plugin is activated in a weird way,
		 * or the environment changes after activation. Also handles upgrade routines.
		 */
		public function check_environment() {
			if ( ! defined( 'IFRAME_REQUEST' ) && ( WC_XENDIT_VERSION !== get_option( 'wc_xendit_version' ) ) ) {
				$this->install();

				do_action( 'woocommerce_xendit_updated' );
			}

			$environment_warning = self::get_environment_warning();

			if ( $environment_warning && is_plugin_active( plugin_basename( __FILE__ ) ) ) {
				$this->add_admin_notice( 'bad_environment', 'error', $environment_warning );
			}

			// Check if secret key present. Otherwise prompt, via notice, to go to
			// setting.
			if ( ! class_exists( 'WC_Xendit_API' ) ) {
				include_once( dirname( __FILE__ ) . '/includes/class-wc-xendit-api.php' );
			}

			$secret = WC_Xendit_API::get_secret_key();

			if ( empty( $secret ) && ! ( isset( $_GET['page'], $_GET['section'] ) && 'wc-settings' === $_GET['page'] && 'xendit' === $_GET['section'] ) ) {
				$setting_link = $this->get_setting_link();
				$this->add_admin_notice( 'prompt_connect', 'notice notice-warning', sprintf( __( 'Xendit is almost ready. To get started, <a href="%s">set your Xendit account keys</a>.', 'woocommerce-gateway-xendit' ), $setting_link ) );
			}
		}

		/**
		 * Updates the plugin version in db
		 *
		 * @since 3.1.0
		 * @version 3.1.0
		 * @return bool
		 */
		private static function _update_plugin_version() {
			delete_option( 'wc_xendit_version' );
			update_option( 'wc_xendit_version', WC_XENDIT_VERSION );

			return true;
		}

		/**
		 * Handles upgrade routines.
		 *
		 * @since 3.1.0
		 * @version 3.1.0
		 */
		public function install() {
			if ( ! defined( 'WC_XENDIT_INSTALLING' ) ) {
				define( 'WC_XENDIT_INSTALLING', true );
			}

			$this->_update_plugin_version();
		}

		/**
		 * Checks the environment for compatibility problems.  Returns a string with the first incompatibility
		 * found or false if the environment has no problems.
		 */
		static function get_environment_warning() {
			if ( version_compare( phpversion(), WC_XENDIT_MIN_PHP_VER, '<' ) ) {
				$message = __( 'WooCommerce Xendit - The minimum PHP version required for this plugin is %1$s. You are running %2$s.', 'woocommerce-gateway-xendit' );

				return sprintf( $message, WC_XENDIT_MIN_PHP_VER, phpversion() );
			}

			if ( ! defined( 'WC_VERSION' ) ) {
				return __( 'WooCommerce Xendit requires WooCommerce to be activated to work.', 'woocommerce-gateway-xendit' );
			}

			if ( version_compare( WC_VERSION, WC_XENDIT_MIN_WC_VER, '<' ) ) {
				$message = __( 'WooCommerce Xendit - The minimum WooCommerce version required for this plugin is %1$s. You are running %2$s.', 'woocommerce-gateway-xendit' );

				return sprintf( $message, WC_XENDIT_MIN_WC_VER, WC_VERSION );
			}

			if ( ! function_exists( 'curl_init' ) ) {
				return __( 'WooCommerce Xendit - cURL is not installed.', 'woocommerce-gateway-xendit' );
			}

			return false;
		}

		/**
		 * Adds plugin action links
		 *
		 * @since 1.0.0
		 */
		public function plugin_action_links( $links ) {
			$setting_link = $this->get_setting_link();

			$plugin_links = array(
				'<a href="' . $setting_link . '">' . __( 'Settings', 'woocommerce-gateway-xendit' ) . '</a>',
				'<a href="https://docs.woocommerce.com/document/xendit/">' . __( 'Docs', 'woocommerce-gateway-xendit' ) . '</a>',
				'<a href="https://woocommerce.com/contact-us/">' . __( 'Support', 'woocommerce-gateway-xendit' ) . '</a>',
			);
			return array_merge( $plugin_links, $links );
		}

		/**
		 * Get setting link.
		 *
		 * @since 1.0.0
		 *
		 * @return string Setting link
		 */
		public function get_setting_link() {
			$use_id_as_section = function_exists( 'WC' ) ? version_compare( WC()->version, '2.6', '>=' ) : false;

			$section_slug = $use_id_as_section ? 'xendit' : strtolower( 'WC_Gateway_Xendit' );

			return admin_url( 'admin.php?page=wc-settings&tab=checkout&section=' . $section_slug );
		}

		/**
		 * Initialize the gateway. Called very early - in the context of the plugins_loaded action
		 *
		 * @since 1.0.0
		 */
		public function init_gateways() {
			if ( class_exists( 'WC_Subscriptions_Order' ) && function_exists( 'wcs_create_renewal_order' ) ) {
				$this->subscription_support_enabled = true;
			}

			if ( class_exists( 'WC_Pre_Orders_Order' ) ) {
				$this->pre_order_enabled = true;
			}

			if ( ! class_exists( 'WC_Payment_Gateway' ) ) {
				return;
			}

			if ( class_exists( 'WC_Payment_Gateway_CC' ) ) {
				include_once( dirname( __FILE__ ) . '/includes/class-wc-gateway-xendit.php' );
			}

			add_filter( 'woocommerce_payment_gateways', array( $this, 'add_gateways' ) );

			$load_addons = (
				$this->subscription_support_enabled
				||
				$this->pre_order_enabled
			);

			if ( $load_addons ) {
				require_once( dirname( __FILE__ ) . '/includes/class-wc-gateway-xendit-addons.php' );
			}
		}

		/**
		 * Add the gateways to WooCommerce
		 *
		 * @since 1.0.0
		 */
		public function add_gateways( $methods ) {
			if ( $this->subscription_support_enabled || $this->pre_order_enabled ) {
				$methods[] = 'WC_Gateway_Xendit_Addons';
			} else {
				$methods[] = 'WC_Gateway_Xendit';
			}
			return $methods;
		}


		/**
		 * Xendit uses smallest denomination in currencies such as cents.
		 * We need to format the returned currency from Xendit into human readable form.
		 *
		 * @param object $balance_transaction
		 * @param string $type Type of number to format
		 */
		public static function format_number( $balance_transaction, $type = 'fee' ) {
			if ( ! is_object( $balance_transaction ) ) {
				return;
			}

			if ( 'fee' === $type ) {
				return number_format( $balance_transaction->fee / 100, 2, '.', '' );
			}

			return number_format( $balance_transaction->net / 100, 2, '.', '' );
		}

		/**
		 * Capture payment when the order is changed from on-hold to complete or processing
		 *
		 * @param  int $order_id
		 */
		public function capture_payment( $order_id ) {
			$order = wc_get_order( $order_id );
			$amount = $order->get_total() * 100;

			$this->log('capture_payment called in xendit');

			$charge   = get_post_meta( $order_id, '_xendit_charge_id', true );
			$captured = get_post_meta( $order_id, '_xendit_charge_captured', true );

			if ( $charge && 'no' === $captured ) {
				$this->log('if block in capture payment called in Xendit');
				$result = WC_Xendit_API::request( array(
					'amount'   => $amount,
					'external_id' => 'postman-2jkds-90904'
				), 'credit_card_capture' );

				if ( is_wp_error( $result ) ) {
					$order->add_order_note( __( 'Unable to capture charge!', 'woocommerce-gateway-xendit' ) . ' ' . $result->get_error_message() );
				} else {
					$order->add_order_note( sprintf( __( 'Xendit charge complete (Charge ID: %s)', 'woocommerce-gateway-xendit' ), $result->id ) );
					update_post_meta( $order_id, '_xendit_charge_captured', 'yes' );

					// Store other data such as fees
					update_post_meta( $order_id, 'Xendit Payment ID', $result->id );
					update_post_meta( $order_id, '_transaction_id', $result->id );

					if ( isset( $result->balance_transaction ) && isset( $result->balance_transaction->fee ) ) {
						// Fees and Net needs to both come from Xendit to be accurate as the returned
						// values are in the local currency of the Xendit account, not from WC.
						$fee = ! empty( $result->balance_transaction->fee ) ? self::format_number( $result->balance_transaction, 'fee' ) : 0;
						$net = ! empty( $result->balance_transaction->net ) ? self::format_number( $result->balance_transaction, 'net' ) : 0;
						update_post_meta( $order_id, 'Xendit Fee', $fee );
						update_post_meta( $order_id, 'Net Revenue From Xendit', $net );
					}
				}
			}
		}

		/**
		 * Cancel pre-auth on refund/cancellation
		 *
		 * @param  int $order_id
		 */
		public function cancel_payment( $order_id ) {
			$order = wc_get_order( $order_id );
			$charge   = get_post_meta( $order_id, '_xendit_charge_id', true );

			if ( $charge ) {
				$result = WC_Xendit_API::request( array(
					'amount' => $order->get_total() * 100,
				), 'charges/' . $charge . '/refund' );

				if ( is_wp_error( $result ) ) {
					$order->add_order_note( __( 'Unable to refund charge!', 'woocommerce-gateway-xendit' ) . ' ' . $result->get_error_message() );
				} else {
					$order->add_order_note( sprintf( __( 'Xendit charge refunded (Charge ID: %s)', 'woocommerce-gateway-xendit' ), $result->id ) );
					delete_post_meta( $order_id, '_xendit_charge_captured' );
					delete_post_meta( $order_id, '_xendit_charge_id' );
				}
			}

		}


		/**
		 * Checks Xendit minimum order value authorized for IDR
		 */
		public static function get_minimum_amount() {
		    $minimum_amount = 10000;
			return $minimum_amount;
		}

		/**
		 * Log stuff
		 */
		 public function log( $message ){
	 		if (!file_exists(dirname( __FILE__ ).'/log.txt')) {
	 			file_put_contents(dirname( __FILE__ ).'/log.txt', 'Xendit Logs'."\r\n");
	 		}

	 		$debug_log_file_name = dirname( __FILE__ ) . '/log.txt';
	 		$fp = fopen( $debug_log_file_name, "a" );
	 		fwrite( $fp, $message );
	 		fclose( $fp );
	 	}

	}

	$GLOBALS['wc_xendit'] = WC_Xendit::get_instance();

endif;

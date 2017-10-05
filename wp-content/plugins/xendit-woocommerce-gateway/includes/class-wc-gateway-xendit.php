<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * WC_Gateway_Xendit class.
 *
 * @extends WC_Payment_Gateway
 */
class WC_Gateway_Xendit extends WC_Payment_Gateway_CC {

	/**
	 * Should we capture Credit cards
	 *
	 * @var bool
	 */
	public $capture;

	/**
	 * Alternate credit card statement name
	 *
	 * @var bool
	 */
	public $statement_descriptor;

	/**
	 * Checkout enabled
	 *
	 * @var bool
	 */
	public $xendit_checkout;

	/**
	 * Checkout Locale
	 *
	 * @var string
	 */
	public $xendit_checkout_locale;

	/**
	 * Credit card image
	 *
	 * @var string
	 */
	public $xendit_checkout_image;

	/**
	 * Should we store the users credit cards?
	 *
	 * @var bool
	 */
	public $saved_cards;

	/**
	 * API access secret key
	 *
	 * @var string
	 */
	public $secret_key;

	/**
	 * Api access publishable key
	 *
	 * @var string
	 */
	public $publishable_key;


	/**
	 * Is test mode active?
	 *
	 * @var bool
	 */
	public $testmode;

	/**
	 * Logging enabled?
	 *
	 * @var bool
	 */
	public $logging;

	/**
	 * Constructor
	 */
	public function __construct() {
		$this->id                   = 'xendit';
		$this->method_title         = __( 'Xendit', 'woocommerce-gateway-xendit' );
		$this->method_description   = sprintf( __( 'Xendit works by adding credit card fields on the checkout and then sending the details to Xendit for verification. <a href="%1$s" target="_blank">Sign up</a> for a Xendit account, and <a href="%2$s" target="_blank">get your Xendit account keys</a>.', 'woocommerce-gateway-xendit' ), 'https://dashboard.xendit.co/auth/register', 'https://dashboard.xendit.co/dashboard/settings/developer' );
		$this->has_fields           = true;
		$this->view_transaction_url = 'https://dashboard.xendit.co/dashboard/credit_cards';
		$this->supports             = array(
			'subscriptions',
			'products',
			'refunds',
			'subscription_cancellation',
			'subscription_reactivation',
			'subscription_suspension',
			'subscription_amount_changes',
			'subscription_payment_method_change', // Subs 1.n compatibility.
			'subscription_payment_method_change_admin',
			'subscription_date_changes',
			'multiple_subscriptions',
			'tokenization',
			'add_payment_method'
		);

		// Load the form fields.
		$this->init_form_fields();

		// Load the settings.
		$this->init_settings();

		// Get setting values.
		$this->title                   = $this->get_option( 'title' );
		$this->description             = $this->get_option( 'description' );
		$this->enabled                 = $this->get_option( 'enabled' );
		$this->testmode                = 'yes' === $this->get_option( 'testmode' );
		$this->capture                 = 'yes' === $this->get_option( 'capture', 'yes' );
		$this->statement_descriptor    = $this->get_option( 'statement_descriptor', wp_specialchars_decode( get_bloginfo( 'name' ), ENT_QUOTES ) );
		$this->xendit_checkout         = 'yes' === $this->get_option( 'xendit_checkout' );
		$this->xendit_checkout_locale  = $this->get_option( 'xendit_checkout_locale' );
		$this->xendit_checkout_image   = $this->get_option( 'xendit_checkout_image', '' );
		$this->saved_cards             = 'yes' === $this->get_option( 'saved_cards' );
		$this->secret_key              = $this->testmode ? $this->get_option( 'test_secret_key' ) : $this->get_option( 'secret_key' );
		$this->publishable_key         = $this->testmode ? $this->get_option( 'test_publishable_key' ) : $this->get_option( 'publishable_key' );
		$this->logging                 = 'yes' === $this->get_option( 'logging' );

		if ( $this->xendit_checkout ) {
			$this->order_button_text = __( 'Continue to payment', 'woocommerce-gateway-xendit' );
		}

		if ( $this->testmode ) {
			$this->description .= ' ' . sprintf( __( 'TEST MODE ENABLED. In test mode, you can use the card number 5200000000000056 with any CVC and a valid expiration date or check the documentation "<a href="%s">Testing Xendit</a>" for more card numbers.', 'woocommerce-gateway-xendit' ), 'https://xendit.com/docs/testing' );
			$this->description  = trim( $this->description );
		}

		WC_Xendit_API::set_secret_key( $this->secret_key );

		// Hooks.
		add_action( 'wp_enqueue_scripts', array( $this, 'payment_scripts' ) );
		add_action( 'admin_enqueue_scripts', array( $this, 'admin_scripts' ) );
		add_action( 'woocommerce_update_options_payment_gateways_' . $this->id, array( $this, 'process_admin_options' ) );
	}

	/**
	 * Get Xendit amount to pay
	 *
	 * @param float  $total Amount due.
	 * @param string $currency Accepted currency.
	 *
	 * @return float|int
	 */
	public function get_xendit_amount( $total, $currency = 'IDR' ) {
		if ( ! $currency ) {
			$currency = get_woocommerce_currency();
		}
		$total = round( $total, 2 ) * 10;

		echo '<script>var total = '.$total.'</script>';
		return $total;
	}

	/**
	 * Check if this gateway is enabled
	 */
	public function is_available() {
		if ( 'yes' === $this->enabled ) {
			if ( ! $this->testmode && is_checkout() ) {
				return false;
			}
			if ( ! $this->secret_key || ! $this->publishable_key ) {
				return false;
			}
			return true;
		}
		return false;
	}

	/**
	 * Initialise Gateway Settings Form Fields
	 */
	public function init_form_fields() {
		$this->form_fields = include( 'settings-xendit.php' );
	}

	/**
	 * Payment form on checkout page
	 */
	public function payment_fields() {
		$user                 = wp_get_current_user();
		$display_tokenization = $this->supports( 'tokenization' ) && is_checkout();
		$total                = WC()->cart->total;

		if ( $user->ID ) {
			$user_email = get_user_meta( $user->ID, 'billing_email', true );
			$user_email = $user_email ? $user_email : $user->user_email;
		} else {
			$user_email = '';
		}

		echo '<div
			id="xendit-payment-data"
			data-description=""
			data-email="' . esc_attr( $user_email ) . '"
			data-amount="' . esc_attr( $this->get_xendit_amount( $total ) ) . '"
			data-name="' . esc_attr( $this->statement_descriptor ) . '"
			data-currency="' . esc_attr( strtolower( get_woocommerce_currency() ) ) . '"
			data-locale="' . esc_attr( 'en' ) . '"
			data-allow-remember-me="' . esc_attr( $this->saved_cards ? 'true' : 'false' ) . '">';

		if ( $this->description ) {
			echo apply_filters( 'wc_xendit_description', wpautop( wp_kses_post( $this->description ) ) );
		}

		if ( $display_tokenization ) {
			$this->tokenization_script();
		}

		$this->form();
		echo '</div>';
	}

	/**
	 * Localize Xendit messages based on code
	 *
	 * @since 3.0.6
	 * @version 3.0.6
	 * @return array
	 */
	public function get_localized_messages() {
		return apply_filters( 'wc_xendit_localized_messages', array(
			'invalid_number'        => __( 'The card number is not a valid credit card number.', 'xendit-woocommerce-gateway' ),
			'invalid_expiry_month'  => __( 'The card\'s expiration month is invalid.', 'xendit-woocommerce-gateway' ),
			'invalid_expiry_year'   => __( 'The card\'s expiration year is invalid.', 'xendit-woocommerce-gateway' ),
			'invalid_cvc'           => __( 'The card\'s security code is invalid.', 'xendit-woocommerce-gateway' ),
			'incorrect_number'      => __( 'The card number is incorrect.', 'xendit-woocommerce-gateway' ),
			'expired_card'          => __( 'The card has expired.', 'xendit-woocommerce-gateway' ),
			'incorrect_cvc'         => __( 'The card\'s security code is incorrect.', 'xendit-woocommerce-gateway' ),
			'incorrect_zip'         => __( 'The card\'s zip code failed validation.', 'xendit-woocommerce-gateway' ),
			'card_declined'         => __( 'The card was declined.', 'xendit-woocommerce-gateway' ),
			'missing'               => __( 'There is no card on a subscription that is being charged.', 'xendit-woocommerce-gateway' ),
			'processing_error'      => __( 'An error occurred while processing the card.', 'xendit-woocommerce-gateway' ),
			'invalid_request_error' => __( 'Could not find payment information.', 'xendit-woocommerce-gateway' ),
		) );
	}

	/**
	 * Load admin scripts.
	 *
	 * @since 3.1.0
	 * @version 3.1.0
	 */
	 public function admin_scripts() {

 		if ( 'woocommerce_page_wc-settings' !== get_current_screen()->id ) {
 			return;
 		}

 		$suffix = defined( 'SCRIPT_DEBUG' ) && SCRIPT_DEBUG ? '' : '.min';

 		wp_enqueue_script( 'woocommerce_xendit_admin', plugins_url( 'assets/js/xendit-admin' . $suffix . '.js', WC_XENDIT_MAIN_FILE ), array(), WC_XENDIT_VERSION, true );

 		$xendit_admin_params = array(
 			'localized_messages' => array(
 				'not_valid_live_key_msg' => __( 'This is not a valid live key. Live keys start with "x".', 'woocommerce-gateway-xendit' ),
 				'not_valid_test_key_msg' => __( 'This is not a valid test key. Test keys start with "x".', 'woocommerce-gateway-xendit' ),
 				're_verify_button_text'  => __( 'Re-verify Domain', 'woocommerce-gateway-xendit' ),
 				'missing_secret_key'     => __( 'Missing Secret Key. Please set the secret key field above and re-try.', 'woocommerce-gateway-xendit' ),
 			),
 			'ajaxurl'            => admin_url( 'admin-ajax.php' )
 		);

 		wp_localize_script( 'woocommerce_xendit_admin', 'wc_xendit_admin_params', apply_filters( 'wc_xendit_admin_params', $xendit_admin_params ) );
 	}


	/**
	 * payment_scripts function.
	 *
	 * Outputs scripts used for xendit payment
	 *
	 * @access public
	 */
	 public function payment_scripts() {
		$this->log('payment_scripts called in xendit' . PHP_EOL);

 		if ( ! is_cart() && ! is_checkout() && ! isset( $_GET['pay_for_order'] ) && ! is_add_payment_method_page() ) {
 			return;
 		}

		wp_enqueue_script( 'xendit', 'https://js.xendit.co/v1/xendit.min.js', '', WC_XENDIT_VERSION, true );
		wp_enqueue_script( 'woocommerce_xendit', plugins_url( 'assets/js/xendit.js', WC_XENDIT_MAIN_FILE ), array( 'jquery', 'xendit' ), WC_XENDIT_VERSION, true );

 		$xendit_params = array(
 			'key'                  => $this->publishable_key
 		);

 		// If we're on the pay page we need to pass xendit.js the address of the order.
		// TODO: implement direct payments from the order
 		if ( isset( $_GET['pay_for_order'] ) && 'true' === $_GET['pay_for_order'] ) {
 			$order_id = wc_get_order_id_by_order_key( urldecode( $_GET['key'] ) );
 			$order    = wc_get_order( $order_id );

			echo $order->get_total();

 			$xendit_params['billing_first_name'] = $order->get_billing_first_name();
 			$xendit_params['billing_last_name']  = $order->get_billing_last_name();
 			$xendit_params['billing_address_1']  = $order->get_billing_address_1();
 			$xendit_params['billing_address_2']  = $order->get_billing_address_2();
 			$xendit_params['billing_state']      = $order->get_billing_state();
 			$xendit_params['billing_city']       = $order->get_billing_city();
 			$xendit_params['billing_postcode']   = $order->get_billing_postcode();
 			$xendit_params['billing_country']    = $order->get_billing_country();
			$xendit_params['amount'] 			 = $order->get_total() * 100;
 		}

 		// merge localized messages to be use in JS
 		$xendit_params = array_merge( $xendit_params, $this->get_localized_messages() );

 		wp_localize_script( 'woocommerce_xendit', 'wc_xendit_params', apply_filters( 'wc_xendit_params', $xendit_params ) );
 	}

	//TODO: make length randomish
	function generate_external_id($length = 64) {
	    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	    $charactersLength = strlen($characters);
	    $randomString = '';
	    for ($i = 0; $i < $length; $i++) {
	        $randomString .= $characters[rand(0, $charactersLength - 1)];
	    }
	    return $randomString;
	}

	protected function xendit_authentication($auth_data) { ?>
		<script>
			var token_id = <?php echo $auth_data->token_id ?>;

			var data = {
				"amount": <?php echo $auth_data->amount ?>,
				"token_id": token_id
			}

			wc_xendit_form.form.append( "<input type='hidden' class='xendit_token' name='xendit_token' value='" + token_id + "'/>" );
			Xendit.card.createAuthentication( data, wc_xendit_form.onAuthenticationResponse );
		</script>

		<?php

		$this->log('xendit_authentication $auth_data -> ' . print_r($auth_data, true) . PHP_EOL);

		$auth_id = $_POST['xendit_authentication'];

		return $auth_id;
	}


	/**
	 * Generate the request for the payment.
	 * @param  WC_Order $order
	 * @param  object $source
	 * @return array()
	 */
	protected function generate_payment_request( $order, $xendit_token ) {

		$this->log("=== generate_payment_request === with token -> " . print_r($xendit_token, true) . PHP_EOL);

		$amount = $this->get_xendit_amount( $order->get_total(), $post_data['currency'] );
		$token_id = wc_clean( $_POST['xendit_token'] ? $_POST['xendit_token'] : $xendit_token->source );
		$auth_id = wc_clean( $_POST['xendit_authentication'] ? $_POST['xendit_authentication'] : false);

		$auth_data = array('amount' => $amount, 'token_id' => $token_id);

		if (! $auth_id ) {
			$auth_id = $this->xendit_authentication($auth_data);
		}

		$post_data                = array();
		$post_data['amount']      = $amount;
		$post_data['token_id']    = $token_id;
		$post_data['authentication_id']  = $auth_id;
		$post_data['external_id'] = $this->generate_external_id();

		return $post_data;
	}

	/**
	 * Get payment source. This can be a new token or existing token.
	 *
	 * @param string $subscription_id
	 * @param bool  $force_subscription Should we force subscription creation.
	 *
	 * @throws Exception When card was not added or for and invalid card.
	 * @return object
	 */
	 protected function get_source( $order ) {
 		$this->log('get_source called in Xendit with order => ' . print_r($order, true) . PHP_EOL);
		$this->log('wc-xendit-payment-token -> ' . print_r($_POST['wc-xendit-payment-token']) . PHP_EOL);
 		$xendit_source   = false;
 		$token_id        = false;

 		// New CC info was entered and we have a new token to process
 		if ( isset( $_POST['xendit_token'] ) ) {
 			$this->log(print_r($_POST['xendit_token'], true));

 			$xendit_token     = wc_clean( $_POST['xendit_token'] );
 			// Not saving token, so don't define customer either.
			$xendit_source   = $xendit_token;
 		} elseif ( isset( $_POST['wc-xendit-payment-token'] ) && 'new' !== $_POST['wc-xendit-payment-token'] ) {
			// Use an EXISTING multiple use token, and then process the payment
			$this->log('getting WC_Payment_Tokens');
			$token_id = wc_clean( $_POST['wc-xendit-payment-token'] );
			$token    = WC_Payment_Tokens::get( $token_id );

							// associates payment token with WP user_id
			if ( ! $token || $token->get_user_id() !== get_current_user_id() ) {
				WC()->session->set( 'refresh_totals', true );
				throw new Exception( __( 'Invalid payment method. Please input a new card number.', 'woocommerce-gateway-xendit' ) );
			}

			$xendit_source = $token->get_token();
		}

 		return (object) array(
 			'token_id' => $token_id,
 			'source'   => $xendit_source,
 		);
 	}

	/**
	 * Get payment source from an order. This could be used in the future for
	 * a subscription as an example, therefore using the current user ID would
	 * not work - the customer won't be logged in :)
	 *
	 * Not using 2.6 tokens for this part since we need a customer AND a card
	 * token, and not just one.
	 *
	 * @param object $order
	 * @return object
	 */
	protected function get_order_source( $order = null ) {
		$this->log('get_order source called in Class_WC_Gateway_Xendit' . PHP_EOL);

		$xendit_source   = false;
		$token_id        = false;

		if ( $order ) {
			$order_id = version_compare( WC_VERSION, '3.0.0', '<' ) ? $order->id : $order->get_id();

			if ( $meta_value = get_post_meta( $order_id, '_xendit_card_id', true ) ) {
				$xendit_source = $meta_value;
			}
		}

		return (object) array(
			'token_id' => $token_id,
			'source'   => $xendit_source,
		);
	}

	/**
	 * Process the payment
	 *
	 * @param int  $order_id Reference.
	 * @param bool $retry Should we retry on fail.
	 *
	 * @throws Exception If payment will not be accepted.
	 *
	 * @return array|void
	 */
	public function process_payment( $order_id, $retry = true ) {
		$this->log('process_payment called in Xendit with order_id ==> ' . print_r($order_id, true) . PHP_EOL);

		try {
			$order  = wc_get_order( $order_id );

			$this->log('order is => ' . print_r($order, true) . PHP_EOL);

			$this->log('above source -> ' . print_r($_POST, true) . PHP_EOL);

			//token
			$source = $this->get_source($order);

			$this->log('process_payment try block with source ==> ' . print_r($source, true) . 'and order id ==> ' . $order_id . PHP_EOL);

			// so it enters the if block and throws an error.
			if ( empty( $source->source ) && empty( $source->subscription ) ) {
				$error_msg = __( 'Please enter your card details to make a payment.', 'xendit-woocommerce-gateway' );
				$error_msg .= ' ' . __( 'Developers: Please make sure that you are including jQuery and there are no JavaScript errors on the page.', 'xendit-woocommerce-gateway' );
				throw new Exception( $error_msg );
			}

			// Store source to order meta.
			$this->save_source( $order, $source );

			// Result from Xendit API request.
			$response = null;

			// Handle payment.
			if ( $order->get_total() > 0 ) {

				if ( $order->get_total() * 100 < WC_XENDIT::get_minimum_amount() ) {
					throw new Exception( sprintf( __( 'Sorry, the minimum allowed order total is %1$s to use this payment method.', 'xendit-woocommerce-gateway' ), wc_price( WC_Xendit::get_minimum_amount() / 100 ) ) );
				}

				$this->log( "Info: Begin processing payment for order $order_id for the amount of {$order->get_total()}" );
				$this->log('$POST -> ' . print_r($POST, true));
				// Make the request.

				if (isset( $_POST['wc-xendit-payment-token'] ) && 'new' !== $_POST['wc-xendit-payment-token'] ) {
					$token_id = wc_clean( $_POST['wc-xendit-payment-token'] );
					$token    = WC_Payment_Tokens::get( $source->source );

					$xendit_token = $token->get_token();
				}

				$response = WC_Xendit_API::request( $this->generate_payment_request( $order, $xendit_token ) );

				$this->log('card exp year -> ' . print_r(wc_clean($_POST['year']), true) . PHP_EOL);

				// Save new if there is one token

				/*
					$token->set_token( 'token here' );
					$token->set_last4( '4124' );
					$token->set_expiry_year( '2017' );
					$token->set_expiry_month( '1' ); // incorrect length
					$token->set_card_type( 'visa' );
					var_dump( $token->validate() ); // bool(false)
				*/

				$this->log('response -> ' . print_r($response, true) . PHP_EOL);
				$this->log('post -> ' . print_r($_POST, true) . PHP_EOL);
				$this->log('user -> ' . print_r(get_current_user_id(), true) . PHP_EOL);

				if ( get_current_user_id() && class_exists( 'WC_Payment_Token_CC' ) ) {
					$token = new WC_Payment_Token_CC();
					$token->set_token( $response->id );
					$token->set_last4( substr($response->masked_card_number, -4) );
					$token->set_expiry_year( wc_clean($_POST['year']) );
					$token->set_expiry_month( wc_clean($_POST['month']) );
					$token->set_gateway_id( 'xendit' );
					$token->set_card_type( $response->card_brand ); //visa, mastercard, etc.
					$token->set_user_id( get_current_user_id() );
					$this->log('validation' . $token->validate());
					$token->save();
					$this->log('saving wc payment token cc -> ' . $token . PHP_EOL);
				}

				if ( is_wp_error( $response ) ) {
					// Customer param wrong? The user may have been deleted on xendit's end. Remove subscription_id. Can be retried without.
					if ( 'subscription' === $response->get_error_code() && $retry ) {
						delete_user_meta( get_current_user_id(), '_xendit_subscription_id' );
						return $this->process_payment( $order_id, false );
						// Source param wrong? The CARD may have been deleted on xendit's end. Remove token and show message.
					} elseif ( 'source' === $response->get_error_code() && $source->token_id ) {
						$token = WC_Payment_Tokens::get( $source->token_id );
						$token->delete();
						$message = __( 'This card is no longer available and has been removed.', 'xendit-woocommerce-gateway' );
						$order->add_order_note( $message );
						throw new Exception( $message );
					}

					$localized_messages = $this->get_localized_messages();

					$message = isset( $localized_messages[ $response->get_error_code() ] ) ? $localized_messages[ $response->get_error_code() ] : $response->get_error_message();

					$order->add_order_note( $message );

					throw new Exception( $message );
				}

				// Process valid response.
				$this->process_response( $response, $order );
			} else {
				$order->payment_complete();
			}

			// Remove cart.
			WC()->cart->empty_cart();

			do_action( 'wc_gateway_xendit_process_payment', $response, $order );

			// Return thank you page redirect.
			return array(
				'result'   => 'success',
				'redirect' => $this->get_return_url( $order )
			);


		} catch ( Exception $e ) {
			wc_add_notice( $e->getMessage(), 'error' );
			$this->log( sprintf( __( 'Error: %s', 'xendit-woocommerce-gateway' ), $e->getMessage() ) );

			if ( $order->has_status( array( 'pending', 'failed' ) ) ) {
				$this->send_failed_order_email( $order_id );
			}

			do_action( 'wc_gateway_xendit_process_payment_error', $e, $order );

			return array(
				'result'   => 'fail',
				'redirect' => '',
			);
		}
	}

	/**
	 * Save source to order.
	 *
	 * @param WC_Order $order For to which the source applies.
	 * @param stdClass $source Source information.
	 */
	protected function save_source( $order, $source ) {
		$this->log('save_source called in Xendit with order ==> ' . print_r($order, true) . 'and source ==> ' . print_r($source, true));

		$order_id = version_compare( WC_VERSION, '3.0.0', '<' ) ? $order->id : $order->get_id();

		// Store source in the order.
		if ( $source->source ) {
			version_compare( WC_VERSION, '3.0.0', '<' ) ? update_post_meta( $order_id, '_xendit_card_id', $source->source ) : $order->update_meta_data( '_xendit_card_id', $source->source );
		}

		if ( is_callable( array( $order, 'save' ) ) ) {
			$order->save();
		}
	}

	/**
	 * Store extra meta data for an order from a Xendit Response.
	 */
	 public function process_response( $response, $order ) {
 		$this->log( 'Processing response: ' . print_r( $response, true ) . PHP_EOL);
		$this->log( 'CAPTURED => ' . print_r( $response->status == 'CAPTURED' ) . PHP_EOL);

 		$order_id = version_compare( WC_VERSION, '3.0.0', '<' ) ? $order->id : $order->get_id();

 		// Store charge data
 		update_post_meta( $order_id, '_xendit_charge_id', $response->id );
 		update_post_meta( $order_id, '_xendit_charge_captured', $response->status == 'CAPTURED'  ? 'yes' : 'no' );

 		// Store other data such as fees
 		if ( isset( $response->balance_transaction ) && isset( $response->balance_transaction->fee ) ) {
 			// Fees and Net needs to both come from Xendit to be accurate as the returned
 			// values are in the local currency of the Xendit account, not from WC.
 			$fee = ! empty( $response->balance_transaction->fee ) ? WC_Xendit::format_number( $response->balance_transaction, 'fee' ) : 0;
 			$net = ! empty( $response->balance_transaction->net ) ? WC_Xendit::format_number( $response->balance_transaction, 'net' ) : 0;
 			update_post_meta( $order_id, 'Xendit Fee', $fee );
 			update_post_meta( $order_id, 'Net Revenue From Xendit', $net );
 		}

 		if ( $response->status == 'CAPTURED') {
 			$order->payment_complete( $response->id );

 			$message = sprintf( __( 'Xendit charge complete (Charge ID: %s)', 'woocommerce-gateway-xendit' ), $response->id );
 			$order->add_order_note( $message );
 			$this->log( 'Success: ' . $message );

 		} else {
 			update_post_meta( $order_id, '_transaction_id', $response->id, true );

 			if ( $order->has_status( array( 'pending', 'failed' ) ) ) {
 				version_compare( WC_VERSION, '3.0.0', '<' ) ? $order->reduce_order_stock() : wc_reduce_stock_levels( $order_id );
 			}

 			$order->update_status( 'on-hold', sprintf( __( 'Xendit charge authorized (Charge ID: %s). Process order to take payment, or cancel to remove the pre-authorization.', 'woocommerce-gateway-xendit' ), $response->id ) );
 			$this->log( "Successful auth: $response->id" );
 		}

 		do_action( 'wc_gateway_xendit_process_response', $response, $order );

 		return $response;
 	}

	/**
	 * Add payment method via account screen.
	 * We don't store the token locally, but to the .
	 * @since 3.0.0
	 */
	public function add_payment_method() {
		$this->log('add_payment_method called in Xendit');
		if ( empty( $_POST['xendit_token'] ) || ! is_user_logged_in() ) {
			wc_add_notice( __( 'There was a problem adding the card.', 'xendit-woocommerce-gateway' ), 'error' );
			return;
		}


		if ( is_wp_error( $card ) ) {
			$localized_messages = $this->get_localized_messages();
			$error_msg = __( 'There was a problem adding the card.', 'xendit-woocommerce-gateway' );

			wc_add_notice( $error_msg, 'error' );
			return;
		}

		return array(
			'result'   => 'success',
			'redirect' => wc_get_endpoint_url( 'payment-methods' ),
		);
	}

	/**
	 * Refund a charge
	 * @param  int $order_id
	 * @param  float $amount
	 * @return bool
	 */
	public function process_refund( $order_id, $amount = null, $reason = '' ) {
		$order = wc_get_order( $order_id );

		if ( ! $order || ! $order->get_transaction_id() ) {
			return false;
		}

		$body = array();

		if ( ! is_null( $amount ) ) {
			$body['amount']	= $this->get_xendit_amount( $amount );
		}

		if ( $reason ) {
			$body['metadata'] = array(
				'reason'	=> $reason,
			);
		}

		$this->log( "Info: Beginning refund for order $order_id for the amount of {$amount}" );

		$response = WC_Xendit_API::request( $body, 'charges/' . $order->get_transaction_id() . '/refunds' );

		if ( is_wp_error( $response ) ) {
			$this->log( 'Error: ' . $response->get_error_message() );
			return $response;
		} elseif ( ! empty( $response->id ) ) {
			$refund_message = sprintf( __( 'Refunded %1$s - Refund ID: %2$s - Reason: %3$s', 'xendit-woocommerce-gateway' ), wc_price( $response->amount / 100 ), $response->id, $reason );
			$order->add_order_note( $refund_message );
			$this->log( 'Success: ' . html_entity_decode( strip_tags( $refund_message ) ) );
			return true;
		}
	}

	/**
	 * Sends the failed order email to admin
	 *
	 * @version 3.1.0
	 * @since 3.1.0
	 * @param int $order_id
	 * @return null
	 */
	public function send_failed_order_email( $order_id ) {
		$emails = WC()->mailer()->get_emails();
		if ( ! empty( $emails ) && ! empty( $order_id ) ) {
			$emails['WC_Email_Failed_Order']->trigger( $order_id );
		}
	}

	/**
	 * Logs
	 *
	 * @since 3.1.0
	 * @version 3.1.0
	 *
	 * @param string $message
	 */
	// public function log( $message ) {
	// 	if ( $this->logging ) {
	// 		WC_Xendit::log( $message );
	// 	}
	// }

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

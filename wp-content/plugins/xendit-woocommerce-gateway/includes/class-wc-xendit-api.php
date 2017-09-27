<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * WC_Xendit_API class.
 *
 * Communicates with Xendit API.
 */
class WC_Xendit_API {

	/**
	 * Xendit API Endpoint
	 */
	const ENDPOINT = 'https://api.xendit.co/';

	/**
	 * Secret API Key.
	 * @var string
	 */
	private static $secret_key = '';

	/**
	 * Set secret API Key.
	 * @param string $key
	 */
	public static function set_secret_key( $secret_key ) {
		self::$secret_key = $secret_key;
	}

	/**
	 * Get secret key.
	 * @return string
	 */
	public static function get_secret_key() {
		if ( ! self::$secret_key ) {
			$options = get_option( 'woocommerce_xendit_settings' );

			if ( isset( $options['testmode'], $options['secret_key'], $options['test_secret_key'] ) ) {
				self::set_secret_key( 'yes' === $options['testmode'] ? $options['test_secret_key'] : $options['secret_key'] );
			}
		}
		return self::$secret_key;
	}

	/**
	 * Send the request to Xendit's API
	 *
	 * @param array $request
	 * @param string $api
	 * @return array|WP_Error
	 */
	public static function request( $request, $api = 'charges', $method = 'POST' ) {
		self::log( "{$api} request: " . print_r( $request, true ) );

		$response = wp_safe_remote_post(
			self::ENDPOINT . $api,
			array(
				'method'        => $method,
				'headers'       => array(
					'Authorization'  => 'Basic ' . base64_encode( self::get_secret_key() . ':' ),
					'Xendit-Version' => '2016-03-07',
				),
				'body'       => apply_filters( 'woocommerce_xendit_request_body', $request, $api ),
				'timeout'    => 70,
				'user-agent' => 'WooCommerce ' . WC()->version,
			)
		);

		if ( is_wp_error( $response ) || empty( $response['body'] ) ) {
			self::log( 'Error Response: ' . print_r( $response, true ) );
			return new WP_Error( 'xendit_error', __( 'There was a problem connecting to the payment gateway.', 'woocommerce-gateway-xendit' ) );
		}

		$parsed_response = json_decode( $response['body'] );

		// Handle response
		if ( ! empty( $parsed_response->error ) ) {
			if ( ! empty( $parsed_response->error->code ) ) {
				$code = $parsed_response->error->code;
			} else {
				$code = 'xendit_error';
			}
			return new WP_Error( $code, $parsed_response->error->message );
		} else {
			return $parsed_response;
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
	public static function log( $message ) {
		$options = get_option( 'woocommerce_xendit_settings' );

		if ( 'yes' === $options['logging'] ) {
			WC_Xendit::log( $message );
		}
	}
}

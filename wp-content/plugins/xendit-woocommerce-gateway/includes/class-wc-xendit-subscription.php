<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

/**
 * WC_Xendit_Subscription class.
 *
 * Represents a Xendit Subscription.
 */
class WC_Xendit_Subscription {

	/**
	 * Xendit subscription ID
	 * @var string
	 */
	private $id = '';

	/**
	 * WP User ID
	 * @var integer
	 */
	private $user_id = 0;

	/**
	 * Data from API
	 * @var array
	 */
	private $subscription_data = array();

	/**
	 * Constructor
	 * @param integer $user_id
	 */
	public function __construct($args) {
        if ($args) {
            $this->set_id($this->create_subscription($args));
        }
	}

	/**
	 * Get Xendit subscription ID.
	 * @return string
	 */
	public function get_id() {
		return $this->id;
	}

	/**
	 * Set Xendit subscription ID.
	 * @param [type] $id [description]
	 */
	public function set_id( $id ) {
		$this->id = wc_clean( $id );
	}

	/**
	 * User ID in WordPress.
	 * @return int
	 */
	public function get_user_id() {
		return absint( $this->user_id );
	}

	/**
	 * Set User ID used by WordPress.
	 * @param int $user_id
	 */
	public function set_user_id( $user_id ) {
		$this->user_id = absint( $user_id );
	}

	/**
	 * Get user object.
	 * @return WP_User
	 */
	protected function get_user() {
		return $this->get_user_id() ? get_user_by( 'id', $this->get_user_id() ) : false;
	}

	/**
	 * Store data from the Xendit API about this subscription
	 */
	public function set_subscription_data( $data ) {
		$this->subscription_data = $data;
	}

	/**
	 * Get data from the Xendit API about this subscription
	 */
	public function get_subscription_data() {
		if ( empty( $this->subscription_data ) && $this->get_id() && false === ( $this->subscription_data = get_transient( 'xendit_subscription_' . $this->get_id() ) ) ) {
			$response = WC_Xendit_API::request( array(), 'managed_subscriptions/' . $this->get_id() );

			if ( ! is_wp_error( $response ) ) {
				$this->set_subscription_data( $response );
				set_transient( 'xendit_subscription_' . $this->get_id(), $response, HOUR_IN_SECONDS * 48 );
			}
		}
		return $this->subscription_data;
	}

	/**
	 * Create a subscription via API.
	 * @param array $args
	 * @return WP_Error|int
	 */
	public function create_subscription( $args = array() ) {
		if ( $user = $this->get_user() ) {
			$billing_first_name = get_user_meta( $user->ID, 'billing_first_name', true );
			$billing_last_name  = get_user_meta( $user->ID, 'billing_last_name', true );

			$defaults = array(
				'email'       => $user->user_email,
				'description' => $billing_first_name . ' ' . $billing_last_name,
			);
		} else {
			$defaults = array(
				'email'       => '',
				'description' => '',
			);
		}

		$metadata = array();

		$defaults['metadata'] = apply_filters( 'wc_xendit_subscription_metadata', $metadata, $user );

		$args     = wp_parse_args( $args, $defaults );

		$response = WC_Xendit_API::request( $args, 'managed_subscriptions' );

		if ( is_wp_error( $response ) ) {
			return $response;
		} elseif ( empty( $response->id ) ) {
			return new WP_Error( 'xendit_error', __( 'Could not create Xendit subscription.', 'woocommerce-gateway-xendit' ) );
		}

		$this->set_id( $response->id );
		$this->clear_cache();
		$this->set_subscription_data( $response );

		if ( $this->get_user_id() ) {
			update_user_meta( $this->get_user_id(), '_xendit_subscription_id', $response->id );
		}

		do_action( 'woocommerce_xendit_add_subscription', $args, $response );

		return $response->id;
	}


	/**
	 * Deletes caches for this users cards.
	 */
	public function clear_cache() {
		delete_transient( 'xendit_subscription_' . $this->get_id() );
		$this->subscription_data = array();
	}
}

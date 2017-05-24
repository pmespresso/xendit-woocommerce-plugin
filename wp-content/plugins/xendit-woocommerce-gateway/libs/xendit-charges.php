<?php

if( !defined('ABSPATH') ) exit; // Exit if accessed directly

class Xendit_Charges{

	public function __construct(){
		global $woocommerce;
		
		$this->id = 'xendit_gateway';
		$this->xendit_gateway_title = '';
		$this->xendit_fees = $this->option('xendit_fees');
		$this->xendit_extra_charges = $this->xendit_fees;
		$this->xendit_extra_charges_type = '%';
		$this->xendit_extra_charges_value = wc_price(0);
		add_action( 'woocommerce_calculate_totals', array( $this, 'xendit_calculate_totals' ), 10, 1 );

	}
	
	private function option($key){
		$options = get_option('woocommerce_xendit_gateway_settings');
		return $options[$key];
	}
	
	public function xendit_calculate_totals( $totals ) {
		global $wpdb, $woocommerce;
		$available_gateways = $woocommerce->payment_gateways->get_available_payment_gateways();
		$current_gateway = '';

		if ( !empty($available_gateways) ) {
			if ( isset($woocommerce->session->chosen_payment_method) && isset($available_gateways[$woocommerce->session->chosen_payment_method]) ) {
				$current_gateway = $available_gateways[$woocommerce->session->chosen_payment_method];
			}
			elseif ( isset($available_gateways[get_option('woocommerce_default_gateway')]) ) {
				$current_gateway = $available_gateways[get_option('woocommerce_default_gateway')];
			}
			else {
				$current_gateway =  current( $available_gateways );
			}
		}

		if($current_gateway != ''){
			$current_gateway_id = $current_gateway->id;
			$extra_charges = (float)$this->xendit_fees;

			if( $current_gateway_id == $this->id && $extra_charges > 0){
				$this->xendit_extra_charges_value = round(($totals->cart_contents_total * $this->xendit_fees)/100, 2);
				$this->xendit_gateway_title = $current_gateway->title;
				$this->xendit_extra_charges = $extra_charges;
				$totals->cart_contents_total = $totals->cart_contents_total + $this->xendit_extra_charges_value;
				
				add_action( 'woocommerce_review_order_before_order_total',  array($this, 'add_xendit_extra_charges_row') );
				add_action( 'woocommerce_cart_totals_before_order_total',  array( $this, 'add_xendit_extra_charges_row') );
			}
		}
		
		return $totals;
	}

	public function add_xendit_extra_charges_row(){
    	echo '	<tr class="payment-extra-charge">'."\n";
		echo '		<th>'.sprintf( __('%s Extra Charges %s%s', 'xendit'), $this->xendit_gateway_title, $this->xendit_extra_charges, $this->xendit_extra_charges_type).'</th>'."\n";
		echo '		<td>'.woocommerce_price($this->xendit_extra_charges_value).'</td>'."\n";
		echo '	</tr>'."\n";
	}

}

new Xendit_Charges();
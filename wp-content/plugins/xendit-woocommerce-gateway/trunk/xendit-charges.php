<?php

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

class WC_Xendit_Charges{

	public function __construct(){

		$this->xendit_gateway_title = '';
		$this->xendit_extra_charges = '';
		$this->xendit_extra_charges_type = 0;
		$this->xendit_extra_charges_value = wc_price(0);

		add_action( 'admin_head', array($this, 'add_xendit_charge_fields') );
		add_action( 'woocommerce_calculate_totals', array( $this, 'xendit_calculate_totals' ), 10, 1 );

	}

	public function add_xendit_charge_fields(){
		global $woocommerce;
		$current_tab        = ( empty( $_GET['tab'] ) ) ? '' : sanitize_text_field( urldecode( $_GET['tab'] ) );
		$current_section    = ( empty( $_REQUEST['section'] ) ) ? '' : sanitize_text_field( urldecode( $_REQUEST['section'] ) );
		if($current_tab == 'checkout' && $current_section != '' && ($current_section == 'xendit_gateway')){
			$gateways = $woocommerce->payment_gateways->payment_gateways();
			foreach($gateways as $gateway){
				if( (strtolower(get_class($gateway)) == 'xendit_gateway') && strtolower(get_class($gateway)) == 'wc_gateway_'.$current_section){
					$current_gateway = $gateway->id;
					$extra_charges_id = 'woocommerce_'.$current_gateway.'_extra_charges';
					$extra_charges_type = $extra_charges_id.'_type';
					
					if(isset($_REQUEST['save'])){
						update_option( $extra_charges_id, $_REQUEST[$extra_charges_id] );
						update_option( $extra_charges_type, $_REQUEST[$extra_charges_type] );
					}
					
					$extra_charges = get_option( $extra_charges_id);
					$extra_charges_type_value = get_option($extra_charges_type);
				}
			}
			?>
			<script type="text/javascript">
                jQuery(document).ready(function($){
                    $data  = '';
                    $data += '	<tr valign="top">';
                    $data += '		<th scope="row" class="titledesc"><?php echo __('Xendit Charges', 'xendit');?></th>';
                    $data += '		<td class="forminp">';
                    $data += '			<fieldset>';
                    $data += '				<input class="input-text regular-input" name="<?php echo $extra_charges_type?>" id="<?php echo $extra_charges_type?>" type="hidden" value="percentage"/>';
                    $data += '				<input class="input-text regular-input" name="<?php echo $extra_charges_id?>" id="<?php echo $extra_charges_id?>" type="text" value="<?php echo $extra_charges?>"/>';
                    $data += '				<p class="description"><?php echo __('Xendit fees in % (number only), will apply when user select Xendit as payment gateway.', 'xendit');?></p>
                                        </fieldset>
                                    </td>
                                </tr>
							</table>	
                            ';
                    
                    $('.form-table:last').after($data);
                });
            </script>
		<?php
		}
	}

	public function xendit_calculate_totals( $totals ) {
		global $woocommerce;
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
			$extra_charges_id = 'woocommerce_'.$current_gateway_id.'_extra_charges';
			$extra_charges_type = $extra_charges_id.'_type';
			$extra_charges = (float)get_option( $extra_charges_id);
			$extra_charges_type_value = get_option( $extra_charges_type);

			if($extra_charges){
				$totals->cart_contents_total = $totals->cart_contents_total + round(($totals->cart_contents_total*$extra_charges)/100, 2);
				$this->xendit_gateway_title = $current_gateway->title;
				$this->xendit_extra_charges = $extra_charges;
				$this->xendit_extra_charges_type = $extra_charges_type_value;
				$this->xendit_extra_charges_value = round(($totals->cart_contents_total*$extra_charges)/100, 2);
				
				add_action( 'woocommerce_review_order_before_order_total',  array($this, 'add_payment_xendit_extra_charges_row') );
				add_action( 'woocommerce_cart_totals_before_order_total',  array( $this, 'add_payment_xendit_extra_charges_row') );
			}
		}
		
		return $totals;
	}

	public function add_xendit_gateway_extra_charges_row(){
    	echo '	<tr class="payment-extra-charge">'."\n";
		echo '		<th>'.sprintf( __('%s Extra Charges %s%s', 'xendit'), $this->xendit_gateway_title, $this->xendit_extra_charges, $this->xendit_extra_charges_type).'</th>'."\n";
		echo '		<td>'.woocommerce_price($this->xendit_extra_charges_value).'</td>'."\n";
		echo '	</tr>'."\n";
	}

	public function plugin_url() {
		return $this->plugin_url = untrailingslashit( plugins_url( '/', __FILE__ ) );
	}

}

new WC_Xendit_Charges();
<?php
/**
 * Bulk Price Converter - General Section Settings
 *
 * @version 1.0.0
 * @author  Algoritmika Ltd.
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

if ( ! class_exists( 'Alg_WC_Bulk_Price_Converter_Settings_General' ) ) :

class Alg_WC_Bulk_Price_Converter_Settings_General extends Alg_WC_Bulk_Price_Converter_Settings_Section {

	/**
	 * Constructor.
	 */
	public function __construct() {
		$this->id   = 'general';
		$this->desc = __( 'General', 'alg-wc-bulk-price-converter' );
		parent::__construct();
	}

	/**
	 * get_settings.
	 */
	function get_settings() {
		$tool_button_style = "background: red; border-color: red; box-shadow: 0 1px 0 red; text-shadow: 0 -1px 1px #a00,1px 0 1px #a00,0 1px 1px #a00,-1px 0 1px #a00;";
		$tool_button_link  = add_query_arg( 'page', 'bulk-price-converter-tool', get_admin_url() . 'admin.php' );
		$settings = array(
			array(
				'title'     => __( 'Bulk Price Converter Options', 'alg-wc-bulk-price-converter' ),
				'type'      => 'title',
				'id'        => 'alg_wc_bulk_price_converter_options',
			),
			array(
				'title'     => __( 'WooCommerce Bulk Price Converter', 'alg-wc-bulk-price-converter' ),
				'desc'      => '<strong>' . __( 'Enable', 'alg-wc-bulk-price-converter' ) . '</strong>',
				'desc_tip'  => __( 'Bulk Price Converter for WooCommerce.', 'alg-wc-bulk-price-converter' ),
				'id'        => 'alg_wc_bulk_price_converter_enabled',
				'default'   => 'yes',
				'type'      => 'checkbox',
			),
			array(
				'title'     => __( 'Bulk Price Converter Tool', 'alg-wc-bulk-price-converter' ),
				'id'        => 'alg_wc_bulk_price_converter_tool',
				'type'      => 'bulk_price_converter_custom_link',
				'link'      => '<a class="button-primary" style="' . $tool_button_style . '" href="' . $tool_button_link . '">'
					. __( 'Bulk Price Converter Tool', 'alg-wc-bulk-price-converter' ) . '</a>',
			),
			array(
				'type'      => 'sectionend',
				'id'        => 'alg_wc_bulk_price_converter_options',
			),
		);
		return $settings;
	}

}

endif;

return new Alg_WC_Bulk_Price_Converter_Settings_General();

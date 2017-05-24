<?php
/**
 * Bulk Price Converter - Settings
 *
 * @version 1.0.0
 * @author  Algoritmika Ltd.
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

if ( ! class_exists( 'Alg_WC_Settings_Bulk_Price_Converter' ) ) :

class Alg_WC_Settings_Bulk_Price_Converter extends WC_Settings_Page {

	/**
	 * Constructor.
	 */
	function __construct() {
		$this->id    = 'alg_wc_bulk_price_converter';
		$this->label = __( 'Bulk Price Converter', 'alg-wc-bulk-price-converter' );
		add_action( 'woocommerce_admin_field_bulk_price_converter_custom_link', array( $this, 'output_custom_link' ) );
		parent::__construct();
	}

	/**
	 * output_custom_link.
	 *
	 * @version 1.0.0
	 */
	function output_custom_link( $value ) {
		?><tr valign="top">
			<th scope="row" class="titledesc">
				<label for="<?php echo esc_attr( $value['id'] ); ?>"><?php echo esc_html( $value['title'] ); ?></label>
			</th>
			<td class="forminp forminp-<?php echo sanitize_title( $value['type'] ) ?>">
				<?php echo $value['link']; ?>
			</td>
		</tr><?php
	}

	/**
	 * get_settings.
	 */
	public function get_settings() {
		global $current_section;
		$the_current_section = ( '' != $current_section ) ? $current_section : 'general';
		return apply_filters( 'woocommerce_get_settings_' . $this->id . '_' . $the_current_section, array() );
	}

}

endif;

return new Alg_WC_Settings_Bulk_Price_Converter();

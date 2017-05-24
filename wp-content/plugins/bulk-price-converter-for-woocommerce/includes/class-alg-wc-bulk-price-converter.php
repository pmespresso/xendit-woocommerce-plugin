<?php
/**
 * Bulk Price Converter
 *
 * @version 1.1.0
 * @author  Algoritmika Ltd.
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

if ( ! class_exists( 'Alg_WC_Bulk_Price_Converter_Main' ) ) :

class Alg_WC_Bulk_Price_Converter_Main {

	/**
	 * Constructor.
	 */
	function __construct() {
		if ( 'yes' === get_option( 'alg_wc_bulk_price_converter_enabled' ) ) {
			if ( is_admin() ) {
				add_action( 'admin_menu', array( $this, 'add_bulk_price_converter_menu_link' ), 100 );
			}
		}
	}

	/**
	 * add_bulk_price_converter_menu_link.
	 */
	function add_bulk_price_converter_menu_link() {
		add_submenu_page(
			'woocommerce',
			__( 'Bulk Price Converter Tool', 'alg-wc-bulk-price-converter' ),
			__( 'Bulk Price Converter', 'alg-wc-bulk-price-converter' ),
			'manage_options',
			'bulk-price-converter-tool',
			array( $this, 'create_bulk_price_converter_tool' )
		);
	}

	/**
	 * create_bulk_price_converter_tool.
	 *
	 * @version 1.1.0
	 */
	function create_bulk_price_converter_tool() {

		$result_message = '';

		$multiply_prices_by = isset( $_POST['multiply_prices_by'] ) ? $_POST['multiply_prices_by'] : 1;
		$is_preview = isset( $_POST['bulk_change_prices_preview'] ) ? true : false;

		$result_changing_prices = '';

		if ( $multiply_prices_by <= 0 ) {
			$result_message = '<p><div class="error"><p><strong>' . __( 'Multiply value must be above zero.', 'alg-wc-bulk-price-converter' ) . '</strong></p></div></p>';
			$multiply_prices_by = 1;
		}
		else {
			if ( isset( $_POST['bulk_change_prices'] ) || isset( $_POST['bulk_change_prices_preview'] ) ) {
				$result_changing_prices = $this->change_all_products_prices( $multiply_prices_by, $is_preview );
				if ( ! $is_preview ) {
					$result_message = '<p><div class="updated"><p><strong>' . __( 'Prices changed successfully!', 'alg-wc-bulk-price-converter' ) . '</strong></p></div></p>';
					$multiply_prices_by = 1;
				}
			}
		}

		$select_options_html = '';
		$selected_option = ( isset( $_POST['alg_product_cat'] ) ) ? $_POST['alg_product_cat'] : '';
		$product_categories = get_terms( 'product_cat', 'orderby=name&hide_empty=0' );
		if ( ! empty( $product_categories ) && ! is_wp_error( $product_categories ) ){
			foreach ( $product_categories as $product_category ) {
				$select_options_html .= '<option value="' . $product_category->slug . '"' . selected( $product_category->slug, $selected_option, false ) . '>' . $product_category->name . '</option>';
			}
		}

		// Output HTML
		echo '<div>';
//			echo $this->get_tool_header_html( 'bulk_price_converter' );
			echo '<h1>' . __( 'Bulk Price Converter Tool', 'alg-wc-bulk-price-converter' ) . '</h1>';
			echo $result_message;
			echo '<form method="post" action="">';
				$data_table = array();
				$data_table[] = array(
					__( 'Multiply all product prices by', 'alg-wc-bulk-price-converter' ),
					'<input class="" type="number" step="0.000001" min="0.000001" name="multiply_prices_by" id="multiply_prices_by" value="' . $multiply_prices_by . '">',
				);
				$selected_option_price_types = ( isset( $_POST['alg_price_types'] ) ) ? $_POST['alg_price_types'] : '';
				$data_table[] = array(
					__( 'Price type to modify', 'alg-wc-bulk-price-converter' ),
					'<select name="alg_price_types">' .
						'<option value="alg_both">' . __( 'Both', 'alg-wc-bulk-price-converter' ) . '</option>' .
						'<option value="alg_sale_prices"'    . selected( 'alg_sale_prices',    $selected_option_price_types, false ) . '>'
							. __( 'Sale prices only', 'alg-wc-bulk-price-converter' )    . '</option>' .
						'<option value="alg_regular_prices"' . selected( 'alg_regular_prices', $selected_option_price_types, false ) . '>'
							. __( 'Regular prices only', 'alg-wc-bulk-price-converter' ) . '</option>' .
					'</select>',
					//'',
				);
				if ( '' != $select_options_html ) {
					$data_table[] = array(
						__( 'Products category', 'alg-wc-bulk-price-converter' ),
						'<select name="alg_product_cat" ' . apply_filters( 'alg_wc_bulk_price_converter_option', 'disabled' ) . '>' .
							'<option value="alg_any">' . __( 'Any', 'alg-wc-bulk-price-converter' ) . '</option>' .
							$select_options_html .
							'<option value="alg_none"' . selected( 'alg_none', $selected_option, false ) . '>' . __( 'None', 'alg-wc-bulk-price-converter' ) . '</option>' .
						'</select>' . ' ' . apply_filters( 'alg_wc_bulk_price_converter_option', sprintf( __( 'You will need %s to change this value.', '' ), '<a target="_blank" href="http://coder.fm/item/bulk-price-converter-for-woocommerce-plugin/">Bulk Price Converter Pro</a>' ) ),
					);
				}
				$make_pretty_prices_threshold = isset( $_POST['make_pretty_prices_threshold'] ) ? $_POST['make_pretty_prices_threshold'] : 0;
				$data_table[] = array(
					__( '"Pretty prices" threshold', 'alg-wc-bulk-price-converter' ),
					'<input class="" type="number" step="0.000001" min="0" name="make_pretty_prices_threshold" id="make_pretty_prices_threshold" value="' .
						$make_pretty_prices_threshold . '"' . apply_filters( 'alg_wc_bulk_price_converter_option', 'disabled' ) . '>' . //,
						' ' . '<em>' . __( 'Leave zero to disable.', 'alg-wc-bulk-price-converter' ) . '</em>' . /* : */
						' ' . apply_filters( 'alg_wc_bulk_price_converter_option', sprintf( __( 'You will need %s to change this value.', '' ), '<a target="_blank" href="http://coder.fm/item/bulk-price-converter-for-woocommerce-plugin/">Bulk Price Converter Pro</a>' ) ),
				);
				$data_table[] = array(
					'<input class="button-primary" type="submit" name="bulk_change_prices_preview" id="bulk_change_prices_preview" value="' . __( 'Preview Prices', 'alg-wc-bulk-price-converter' ) . '">',
					'',
				);
				if ( isset( $_POST['bulk_change_prices_preview'] ) ) {
					$data_table[] = array(
						'<input class="button-primary" type="submit" name="bulk_change_prices" id="bulk_change_prices" value="' . __( 'Change Prices', 'alg-wc-bulk-price-converter' ) . '">',
						'',
					);
				}
				echo $this->get_table_html( $data_table, array( 'table_heading_type' => 'none', ) );
			echo '</form>';
			if ( $is_preview ) echo $result_changing_prices;
		echo '</div>';
	}

	/**
	 * get_table_html
	 */
	function get_table_html( $data, $args = array() ) {
		$defaults = array(
			'table_class'        => '',
			'table_style'        => '',
			'table_heading_type' => 'horizontal',
			'columns_classes'    => array(),
			'columns_styles'     => array(),
		);
		//wp_parse_args( $args, $defaults );
		$args = array_merge( $defaults, $args );
		extract( $args );
		$table_class = ( '' == $table_class ) ? '' : ' class="' . $table_class . '"';
		$table_style = ( '' == $table_style ) ? '' : ' style="' . $table_style . '"';
		$html = '';
		$html .= '<table' . $table_class . $table_style . '>';
		$html .= '<tbody>';
		foreach( $data as $row_number => $row ) {
			$html .= '<tr>';
			foreach( $row as $column_number => $value ) {
				$th_or_td = ( ( 0 === $row_number && 'horizontal' === $table_heading_type ) || ( 0 === $column_number && 'vertical' === $table_heading_type ) ) ? 'th' : 'td';
				$column_class = ( ! empty( $columns_classes ) && isset( $columns_classes[ $column_number ] ) ) ? ' class="' . $columns_classes[ $column_number ] . '"' : '';
				$column_style = ( ! empty( $columns_styles ) && isset( $columns_styles[ $column_number ] ) ) ? ' style="' . $columns_styles[ $column_number ] . '"' : '';

				$html .= '<' . $th_or_td . $column_class . $column_style . '>';
				$html .= $value;
				$html .= '</' . $th_or_td . '>';
			}
			$html .= '</tr>';
		}
		$html .= '</tbody>';
		$html .= '</table>';
		return $html;
	}

	/**
	 * change_all_products_prices
	 *
	 * @version 1.1.0
	 */
	function change_all_products_prices( $multiply_prices_by, $is_preview ) {
		$multiply_prices_by = floatval( $multiply_prices_by );
		if ( $multiply_prices_by <= 0 ) {
			return;
		}

		ob_start();

		echo '<table class="widefat" style="width:50%; min-width: 300px; margin-top: 10px;">';
		echo '<tr>' .
				'<th>' . __( 'Product', 'alg-wc-bulk-price-converter' )        . '</th>' .
				'<th>' . __( 'Categories', 'alg-wc-bulk-price-converter' )     . '</th>' .
				'<th>' . __( 'Price Type', 'alg-wc-bulk-price-converter' )     . '</th>' .
				'<th>' . __( 'Original Price', 'alg-wc-bulk-price-converter' ) . '</th>' .
				'<th>' . __( 'Modified Price', 'alg-wc-bulk-price-converter' ) . '</th>' .
			'</tr>';

		$offset = 0;
		$block_size = 96;
		while( true ) {
			$args = array(
				'post_type'      => 'product',
				'post_status'    => 'any',
				'posts_per_page' => $block_size,
				'offset'         => $offset,
//				'orderby'        => 'date',
//				'order'          => 'ASC',
			);
			if ( isset( $_POST['alg_product_cat'] ) && 'alg_any' != $_POST['alg_product_cat'] && 'any' != apply_filters( 'alg_wc_bulk_price_converter_option', 'any' ) ) {
				$args['tax_query'] = array(
					array(
						'taxonomy' => 'product_cat',
						'field'    => 'slug',
						'terms'    => array( $_POST['alg_product_cat'] ),
						'operator' => ( 'alg_none' != $_POST['alg_product_cat'] ) ? 'IN' : 'NOT EXISTS',
					),
				);
			}
			$loop = new WP_Query( $args );
			if ( ! $loop->have_posts() ) break;
			while ( $loop->have_posts() ) : $loop->the_post();
				$this->change_product_price( $loop->post->ID, $multiply_prices_by, $is_preview );
			endwhile;
			$offset += $block_size;
		}
		wp_reset_postdata();

		echo '</table>';

		return ob_get_clean();
	}

	/**
	 * change_price_by_type.
	 *
	 * @version 1.1.0
	 */
	function change_price_by_type( $product_id, $multiply_price_by, $price_type, $is_preview, $parent_product_id, $min_price = 0, $max_price = 0 ) {

		$the_price = get_post_meta( $product_id, '_' . $price_type, true );
		$the_modified_price = $the_price;
		if ( '' != $the_price && 0 != $the_price ) {
			$precision = get_option( 'woocommerce_price_num_decimals', 2 );
			$the_modified_price = round( $the_price * $multiply_price_by, $precision );
			if ( isset( $_POST['make_pretty_prices_threshold'] ) && $_POST['make_pretty_prices_threshold'] > 0 && 0 !== apply_filters( 'alg_wc_bulk_price_converter_option', 0 ) ) {
				$the_modified_price = $this->make_pretty_price( $the_modified_price );
			}
			if ( $the_modified_price < 0 ) {
				$the_modified_price = 0;
			}
			if ( 0 != $min_price && $the_modified_price < $min_price ) {
				$the_modified_price = $min_price;
			}
			if ( 0 != $max_price && $the_modified_price > $max_price ) {
				$the_modified_price = $max_price;
			}
			if ( ! $is_preview ) {
				update_post_meta( $product_id, '_' . $price_type, $the_modified_price );
			}
		}

		$product_cats = array();
		$product_terms = get_the_terms( $parent_product_id, 'product_cat' );
		if ( is_array( $product_terms ) ) {
			foreach ( $product_terms as $term ) {
				$product_cats[] = esc_html( $term->name );
			}
		}
		if ( '' != $the_price || '' != $the_modified_price ) {
			echo '<tr>' .
					'<td>' . get_the_title( $product_id )   . '</td>' .
					'<td>' . implode( ', ', $product_cats ) . '</td>' .
					'<td>' . '<em>' . $price_type . '</em>' . '</td>' .
					'<td>' . $the_price                     . '</td>' .
					'<td>' . $the_modified_price            . '</td>' .
				'</tr>';
		}
	}

	/**
	 * change_price_all_types.
	 *
	 * @version 1.1.0
	 */
	function change_price_all_types( $product_id, $multiply_price_by, $is_preview, $parent_product_id ) {
		$what_prices_to_modify = ( isset( $_POST['alg_price_types'] ) ) ? $_POST['alg_price_types'] : 'alg_both';
		if ( 'alg_both' === $what_prices_to_modify ) {
			$this->change_price_by_type( $product_id, $multiply_price_by, 'price',         $is_preview, $parent_product_id );
			$this->change_price_by_type( $product_id, $multiply_price_by, 'sale_price',    $is_preview, $parent_product_id );
			$this->change_price_by_type( $product_id, $multiply_price_by, 'regular_price', $is_preview, $parent_product_id );
		} elseif ( 'alg_sale_prices' === $what_prices_to_modify ) {
			if ( get_post_meta( $product_id, '_' . 'price', true ) === get_post_meta( $product_id, '_' . 'sale_price', true ) ) {
				$this->change_price_by_type( $product_id, $multiply_price_by, 'price',     $is_preview, $parent_product_id,
					0, get_post_meta( $product_id, '_' . 'regular_price', true ) );
			}
			$this->change_price_by_type( $product_id, $multiply_price_by, 'sale_price',    $is_preview, $parent_product_id,
				0, get_post_meta( $product_id, '_' . 'regular_price', true ) );
		} elseif ( 'alg_regular_prices' === $what_prices_to_modify ) {
			if ( get_post_meta( $product_id, '_' . 'price', true ) === get_post_meta( $product_id, '_' . 'regular_price', true ) ) {
				if (
					get_post_meta( $product_id, '_' . 'price', true ) !== get_post_meta( $product_id, '_' . 'sale_price', true ) ||
					$multiply_price_by <= 1
				) {
					$this->change_price_by_type( $product_id, $multiply_price_by, 'price', $is_preview, $parent_product_id,
						get_post_meta( $product_id, '_' . 'sale_price', true ), 0 );
				}
			}
			$this->change_price_by_type( $product_id, $multiply_price_by, 'regular_price', $is_preview, $parent_product_id,
				get_post_meta( $product_id, '_' . 'sale_price', true ), 0 );
		}
	}

	/**
	 * change_product_price.
	 */
	function change_product_price( $product_id, $multiply_price_by, $is_preview ) {
		$this->change_price_all_types( $product_id, $multiply_price_by, $is_preview, $product_id );
		// Handling variable products
		$product = wc_get_product( $product_id );
		if ( $product->is_type( 'variable' ) ) {
			$variations = $product->get_available_variations();
			foreach( $variations as $variation ) {
				$this->change_price_all_types( $variation['variation_id'], $multiply_price_by, $is_preview, $product_id );
			}
		}
	}

	/**
	 * make_pretty_price.
	 *
	 * @version 1.1.0
	 * @since   1.1.0
	 */
	function make_pretty_price( $price ) {
		if ( 0 == $price ) {
			return $price;
		}
		$the_modified_price = round( $price );
		if ( $price < $_POST['make_pretty_prices_threshold'] ) {
			$the_modified_price -= 0.01; // E.g. 49.49 -> 48.99 and 49.50 -> 49.99
		} else {
			$mod_10 = $the_modified_price % 10;
			if ( 9 != $mod_10 ) {
				$the_modified_price = ( $mod_10 < 5 ) ?
					$the_modified_price - ( $mod_10 + 1 ) :         // E.g. 114.00 -> 109.00
					$the_modified_price + ( 10 - ( $mod_10 + 1 ) ); // E.g. 115.00 -> 119.00
			}
		}
		return $the_modified_price;
	}

}

endif;

return new Alg_WC_Bulk_Price_Converter_Main();

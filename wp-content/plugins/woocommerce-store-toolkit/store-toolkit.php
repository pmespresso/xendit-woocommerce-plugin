<?php
/*
Plugin Name: WooCommerce - Store Toolkit
Plugin URI: http://www.visser.com.au/woocommerce/plugins/store-toolkit/
Description: Store Toolkit includes a growing set of commonly-used WooCommerce administration tools aimed at web developers and store maintainers.
Version: 1.7.2
Author: Visser Labs
Author URI: http://www.visser.com.au/about/
Text Domain: woocommerce-store-toolkit
License: GPL2
*/

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

define( 'WOO_ST_DIRNAME', basename( dirname( __FILE__ ) ) );
define( 'WOO_ST_RELPATH', basename( dirname( __FILE__ ) ) . '/' . basename( __FILE__ ) );
define( 'WOO_ST_PATH', plugin_dir_path( __FILE__ ) );
define( 'WOO_ST_PREFIX', 'woo_st' );

include_once( WOO_ST_PATH . 'common/common.php' );
include_once( WOO_ST_PATH . 'includes/functions.php' );

/**
 * For developers: Store Toolkit debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 */
if( !defined( 'WOO_ST_DEBUG' ) )
	define( 'WOO_ST_DEBUG', false );

function woo_st_i18n() {

	load_plugin_textdomain( 'woocommerce-store-toolkit', false, dirname( plugin_basename( __FILE__ ) ) . '/languages' );

}
add_action( 'init', 'woo_st_i18n' );

if( is_admin() ) {

	/* Start of: WordPress Administration */

	// Register our install script for first time install
	include_once( WOO_ST_PATH . 'includes/install.php' );
	register_activation_hook( __FILE__, 'woo_st_install' );

	function woo_st_admin_init() {

		// Check the User has the manage_woocommerce capability
		if( !current_user_can( 'manage_woocommerce' ) )
			return;

		$action = ( function_exists( 'woo_get_action' ) ? woo_get_action() : false );
		switch( $action ) {

			case 'nuke':
				// Make sure we play nice with other WooCommerce and WordPress nukes
				if( !isset( $_POST['woo_st_nuke'] ) ) {
					$url = add_query_arg( array( 'action' => null, 'message' => __( 'A required $_POST element was not detected so the requested nuke will not proceed', 'woocommerce-store-toolkit' ) ) );
					wp_redirect( $url );
					exit();
				}

				// We need to verify the nonce.
				check_admin_referer( 'nuke', 'woo_st_nuke' );

				if( !ini_get( 'safe_mode' ) )
					set_time_limit( 0 );

				// List of supported datasets
				$datasets = woo_st_get_dataset_types();
				// Check if the re-commence nuke notice has been enabled
				$in_progress = woo_st_get_option( 'in_progress', false );
				if( isset( $_GET['dataset'] ) && !empty( $in_progress ) ) {
					$dataset = strtolower( sanitize_text_field( $_GET['dataset'] ) );
					if( in_array( $dataset, $datasets ) )
						$response = woo_st_clear_dataset( $dataset );
					return;
				}

				// WooCommerce
				if( isset( $_POST['woo_st_products'] ) )
					$response = woo_st_clear_dataset( 'product' );
				if( isset( $_POST['woo_st_categories'] ) ) {
					$categories = $_POST['woo_st_categories'];
					$response = woo_st_clear_dataset( 'product_category', $categories );
				} else if( isset( $_POST['woo_st_product_categories'] ) ) {
					$response = woo_st_clear_dataset( 'product_category' );
				}
				if( isset( $_POST['woo_st_product_tags'] ) )
					$response = woo_st_clear_dataset( 'product_tag' );
				if( isset( $_POST['woo_st_product_brands'] ) )
					$response = woo_st_clear_dataset( 'product_brand' );
				if( isset( $_POST['woo_st_product_vendors'] ) )
					$response = woo_st_clear_dataset( 'product_vendor' );
				if( isset( $_POST['woo_st_product_images'] ) )
					$response = woo_st_clear_dataset( 'product_image' );
				if( isset( $_POST['woo_st_coupons'] ) )
					$response = woo_st_clear_dataset( 'coupon' );
				if( isset( $_POST['woo_st_shipping_classes'] ) )
					$response = woo_st_clear_dataset( 'shipping_class' );
				if( isset( $_POST['woo_st_attributes'] ) )
					$response = woo_st_clear_dataset( 'attribute' );
				if( isset( $_POST['woo_st_orders'] ) ) {
					$orders = $_POST['woo_st_orders'];
					$response = woo_st_clear_dataset( 'order', $orders );
				} else if( isset( $_POST['woo_st_sales_orders'] ) ) {
					$response = woo_st_clear_dataset( 'order' );
				}
				if( isset( $_POST['woo_st_tax_rates'] ) )
					$response = woo_st_clear_dataset( 'tax_rate' );
				if( isset( $_POST['woo_st_download_permissions'] ) )
					$response = woo_st_clear_dataset( 'download_permission' );

				// 3rd Party
				if( isset( $_POST['woo_st_creditcards'] ) )
					$response = woo_st_clear_dataset( 'credit_card' );
				if( isset( $_POST['woo_st_storeexportscsv'] ) )
					$response = woo_st_clear_dataset( 'store_export_csv' );
				if( isset( $_POST['woo_st_storeexportstsv'] ) )
					$response = woo_st_clear_dataset( 'store_export_tsv' );
				if( isset( $_POST['woo_st_storeexportsxls'] ) )
					$response = woo_st_clear_dataset( 'store_export_xls' );
				if( isset( $_POST['woo_st_storeexportsxlsx'] ) )
					$response = woo_st_clear_dataset( 'store_export_xlsx' );
				if( isset( $_POST['woo_st_storeexportsxml'] ) )
					$response = woo_st_clear_dataset( 'store_export_xml' );
				if( isset( $_POST['woo_st_storeexportsrss'] ) )
					$response = woo_st_clear_dataset( 'store_export_rss' );
				if( isset( $_POST['woo_st_google_product_feed'] ) )
					$response = woo_st_clear_dataset( 'google_product_feed' );

				// WordPress
				if( isset( $_POST['woo_st_posts'] ) )
					$response = woo_st_clear_dataset( 'post' );
				if( isset( $_POST['woo_st_post_categories'] ) )
					$response = woo_st_clear_dataset( 'post_category' );
				if( isset( $_POST['woo_st_post_tags'] ) )
					$response = woo_st_clear_dataset( 'post_tag' );
				if( isset( $_POST['woo_st_links'] ) )
					$response = woo_st_clear_dataset( 'link' );
				if( isset( $_POST['woo_st_comments'] ) )
					$response = woo_st_clear_dataset( 'comment' );
				if( isset( $_POST['woo_st_media_images'] ) )
					$response = woo_st_clear_dataset( 'media_image' );
				break;

			case 'relink-rogue-simple-type':
				// We need to verify the nonce.
				if( !empty( $_GET ) && check_admin_referer( 'woo_st_relink_rogue_simple_type' ) ) {
					woo_st_relink_rogue_simple_type();
					$url = add_query_arg( array( 'action' => null, '_wpnonce' => null ) );
					wp_redirect( $url );
					exit();
				}
				break;

			case 'refresh-product-transients':
				// We need to verify the nonce.
				if( !empty( $_GET ) && check_admin_referer( 'woo_st_refresh_product_transients' ) ) {
					woo_st_refresh_product_transients();
					$url = add_query_arg( array( 'action' => null, '_wpnonce' => null ) );
					wp_redirect( $url );
					exit();
				}
				break;

			case 'woo_st-generate_products':
				// We need to verify the nonce.
				if( !empty( $_POST ) && check_admin_referer( 'generate_products', 'woo_st-generate_products' ) ) {

					$args = array(
						'limit' => ( isset( $_POST['limit'] ) ? sanitize_text_field( $_POST['limit'] ) : false ),
						'product_name' => ( isset( $_POST['product_name'] ) ? sanitize_text_field( $_POST['product_name'] ) : false ),
						'short_description' => ( isset( $_POST['short_description'] ) ? sanitize_text_field( $_POST['short_description'] ) : false ),
						'description' => ( isset( $_POST['description'] ) ? sanitize_text_field( $_POST['description'] ) : false ),
						'sku' => ( isset( $_POST['sku'] ) ? sanitize_text_field( $_POST['sku'] ) : false )
					);
					$response = woo_st_generate_sample_products( $args );
					if( $response ) {
						$message = __( 'Sample Products have been generated.', 'woocommerce-store-toolkit' );
						woo_st_admin_notice( $message );
					}
				}
				break;

			case 'woo_st-tools':
				// We need to verify the nonce.
				if( !empty( $_POST ) && check_admin_referer( 'tools', 'woo_st-tools' ) ) {

					$status = ( isset( $_POST['unlock_variations'] ) ? absint( $_POST['unlock_variations'] ) : 0 );
					update_option( WOO_ST_PREFIX . '_unlock_variations', $status );

					$status = ( isset( $_POST['autocomplete_order'] ) ? absint( $_POST['autocomplete_order'] ) : 0 );
					update_option( WOO_ST_PREFIX . '_autocomplete_order', $status );

					$message = __( 'Changes have been saved.', 'woocommerce-store-toolkit' );
					woo_st_admin_notice( $message );
				}
				break;

			// Save changes on Settings screen
			case 'save-settings':
				// We need to verify the nonce.
				if( !empty( $_POST ) && wp_verify_nonce( $_REQUEST['_wpnonce'], 'woo_st_save_settings' ) ) {
					if( check_admin_referer( 'woo_st_save_settings' ) )
						woo_st_settings_save();
				}
				break;

			default:
				// Category
				$term_taxonomy = 'product_cat';
				add_action( $term_taxonomy . '_edit_form_fields', 'woo_st_category_data_meta_box', 11 );
				// Tag
				$term_taxonomy = 'product_tag';
				add_action( $term_taxonomy . '_edit_form_fields', 'woo_st_tag_data_meta_box', 11 );
				// Brand
				$term_taxonomy = 'product_brand';
				add_action( $term_taxonomy . '_edit_form_fields', 'woo_st_brand_data_meta_box', 11 );
				// Product Vendor
				$term_taxonomy = 'yith_shop_vendor';
				add_action( $term_taxonomy . '_edit_form_fields', 'woo_st_product_vendor_data_meta_box', 11 );
				// User
				add_action( 'show_user_profile', 'woo_st_user_orders', 9 );
				add_action( 'edit_user_profile', 'woo_st_user_orders', 9 );
				add_action( 'show_user_profile', 'woo_st_user_data_meta_box', 11 );
				add_action( 'edit_user_profile', 'woo_st_user_data_meta_box', 11 );
				add_action( 'add_meta_boxes', 'woo_st_add_data_meta_boxes', 10, 2 );
				add_filter( 'manage_users_columns', 'woo_st_add_user_column', 11 );
				add_filter( 'manage_users_custom_column', 'woo_st_user_column_values', 11, 3 );
				add_filter( 'admin_footer_text', 'woo_st_admin_footer_text' );
				break;

		}

	}
	add_action( 'admin_init', 'woo_st_admin_init' );

	function woo_st_default_html_page() {

		global $wpdb;

		$tab = false;
		if( isset( $_GET['tab'] ) )
			$tab = $_GET['tab'];

		include_once( WOO_ST_PATH . 'templates/admin/tabs.php' );

	}

	function woo_st_html_page() {

		global $wpdb;

		woo_st_template_header();
		woo_st_support_donate();
		$action = woo_get_action();
		switch( $action ) {

			case 'nuke':
				$message = __( 'The selected WooCommerce and/or WordPress details from the previous screen have been permanently erased from your store. <strong>Ta da!</strong>', 'woocommerce-store-toolkit' );
				woo_st_admin_notice_html( $message );

				woo_st_default_html_page();
				break;

			default:
				woo_st_default_html_page();
				break;

		}
		woo_st_template_footer();

	}

	/* End of: WordPress Administration */

} else {

	/* Start of: Storefront */

	function woo_st_init() {

		// Check if auto-complete Order Status is turned on
		$autocomplete_order = get_option( WOO_ST_PREFIX . '_autocomplete_order', 0 );
		if( $autocomplete_order == 1 ) {
			add_action( 'woocommerce_checkout_order_processed', 'woo_st_autocomplete_order_status', 10, 2 );
		}
		return false;

	}
	add_action( 'init', 'woo_st_init' );

	function woo_st_cron() {

		$action = ( function_exists( 'woo_get_action' ) ? woo_get_action() : false );
		// This is where the CRON magic happens
		if( $action <> 'woo_st-cron' )
			return;

		// Check that Store Toolkit is installed and activated or jump out
		if( !function_exists( 'woo_st_get_option' ) )
			return;

		// Return silent response and record to error log if CRON support is disabled, bad secret key provided or IP whitelist is in effect
		if( woo_st_get_option( 'enable_cron', 0 ) == 0 ) {
			woo_st_error_log( sprintf( 'Error: %s', __( 'Failed CRON access, CRON is disabled', 'woocommerce-store-toolkit' ) ) );
			return;
		}

		$key = ( isset( $_GET['key'] ) ? sanitize_text_field( $_GET['key'] ) : '' );
		if( $key <> woo_st_get_option( 'secret_key', '' ) ) {
			$ip_address = woo_st_get_visitor_ip_address();
			woo_st_error_log( sprintf( 'Error: %s', sprintf( __( 'Failed CRON attempt from %s, incorrect secret key', 'woocommerce-store-toolkit' ), $ip_address ) ) );
			return;
		}
		if( $ip_whitelist = apply_filters( 'woo_st_cron_ip_whitelist', false ) ) {
			$ip_address = woo_st_get_visitor_ip_address();
			if( !in_array( $ip_address, $ip_whitelist ) ) {
				woo_st_error_log( sprintf( 'Error: %s', sprintf( __( 'Failed CRON attempt from %s, did not match IP whitelist', 'woocommerce-store-toolkit' ), $ip_address ) ) );
				return;
			}
			unset( $ip_whitelist );
		}

		// Return simple binary response
		echo absint( woo_st_cron_nuke() );

		exit();

	}
	add_action( 'init', 'woo_st_cron' );

	/* End of: Storefront */

}
?>
<?php
if( is_admin() ) {

	/* Start of: WordPress Administration */

	include_once( WOO_ST_PATH . 'includes/admin.php' );

	// WordPress Administration menu
	function woo_st_admin_menu() {

		add_submenu_page( 'woocommerce', __( 'Store Toolkit', 'woocommerce-store-toolkit' ), __( 'Store Toolkit', 'woocommerce-store-toolkit' ), 'manage_woocommerce', 'woo_st', 'woo_st_html_page' );

	}
	add_action( 'admin_menu', 'woo_st_admin_menu', 11 );

	function woo_st_template_header( $title = '', $icon = 'woocommerce' ) {

		if( $title )
			$output = $title;
		else
			$output = __( 'Store Toolkit', 'woocommerce-store-toolkit' ); ?>
<div class="wrap">
	<div id="icon-<?php echo $icon; ?>" class="icon32 icon32-woocommerce-settings"><br /></div>
	<h2><?php echo $output; ?></h2>
<?php
	}

	function woo_st_template_footer() { ?>
</div>
<!-- .wrap -->
<?php
	}

	function woo_st_support_donate() {

		$output = '';
		$show = true;
		if( function_exists( 'woo_vl_we_love_your_plugins' ) ) {
			if( in_array( WOO_ST_DIRNAME, woo_vl_we_love_your_plugins() ) )
				$show = false;
		}
		if( $show ) {
			$donate_url = 'http://www.visser.com.au/donate/';
			$rate_url = 'http://wordpress.org/support/view/plugin-reviews/' . WOO_ST_DIRNAME;
			$output = '
	<div id="support-donate_rate" class="support-donate_rate">
		<p>' . sprintf( __( '<strong>Like this Plugin?</strong> %s and %s.', 'woocommerce-store-toolkit' ), '<a href="' . $donate_url . '" target="_blank">' . __( 'Donate to support this Plugin', 'woocommerce-store-toolkit' ) . '</a>', '<a href="' . esc_url( add_query_arg( array( 'rate' => '5' ), $rate_url ) ) . '#postform" target="_blank">rate / review us on WordPress.org</a>' ) . '</p>
	</div>
';
		}
		echo $output;

	}

	function woo_st_relink_rogue_simple_type() {

		$updated_products = 0;
		$ignored_products = 0;

		// Get the Term ID for the Simple Product Type
		$term_taxonomy = 'product_type';
		$term_id = term_exists( 'simple', $term_taxonomy );

		// Check if the Simple Product Type exists
		if( $term_id == null || is_wp_error( $term_id ) ) {
			$message = __( 'The Term ID for the Simple Product Type could not be found within the WordPress Terms table (wp_terms), please de-activate and re-activate WooCommerce to resolve this.', 'woocommerce-store-toolkit' );
			woo_st_admin_notice( $message, 'error' );
			return;
		}
		$term_id = $term_id['term_id'];

		// Get a list of all Product Types
		$args = array(
			'fields' => 'ids',
			'hide_empty' => false
		);
		$terms = get_terms( $term_taxonomy, $args );

		// Filter a list of Products that do not have a Product Type
		$post_type = 'product';
		$args = array(
			'post_type' => $post_type,
			'fields' => 'ids',
			'tax_query' => array(
				array(
					'taxonomy' => $term_taxonomy,
					'field' => 'term_id',
					'terms' => $terms,
					'operator' => 'NOT IN'
				)
			),
			'posts_per_page' => -1,
			'post_status' => 'any'
		);
		$product_ids = new WP_Query( $args );
		if( $product_ids->posts ) {
			foreach( $product_ids->posts as $product_id ) {
				// First strip any corrupt Terms assigned to that Product
				wp_set_object_terms( $product_id, null, $term_taxonomy );
				// Assign the new Simple Term to that Product
				$response = wp_set_object_terms( $product_id, (int)$term_id, $term_taxonomy, true );
				if( $response == null || is_wp_error( $response ) ) {
					$ignored_products ++;
					continue;
				}
				$updated_products++;
			}

			if( !empty( $ignored_products ) ) {
				$message = sprintf( __( 'Some Products would not take the Simple Product Type or WordPress returned an error, we managed to update %d of %d', 'woocommerce-store-toolkit' ), $ignored_products, $updated_products );
				woo_st_admin_notice( $message, 'error' );
			} else if( !empty( $updated_products ) ) {
				$message = sprintf( __( 'We managed to update %d Products with the Simple Product Type, happy days!', 'woocommerce-store-toolkit' ), $updated_products );
				woo_st_admin_notice( $message );
			} else {
				$message = __( 'No existing Products had the Simple Product Type assigned to them', 'woocommerce-store-toolkit' );
				woo_st_admin_notice( $message, 'error' );
			}
		} else {
			$message = __( 'No existing Products had the Simple Product Type assigned to them', 'woocommerce-store-toolkit' );
			woo_st_admin_notice( $message, 'error' );
		}

	}

	function woo_st_refresh_product_transients() {

		$post_type = 'product';
		$args = array(
			'post_type' => $post_type,
			'fields' => 'ids',
			'posts_per_page' => -1,
			'post_status' => 'any'
		);
		$product_ids = new WP_Query( $args );
		if( $product_ids->posts ) {
			foreach( $product_ids->posts as $product_id ) {
				wc_delete_product_transients( $product_id );
				delete_post_meta( $product_id, '_wc_average_rating' );
				delete_post_meta( $product_id, '_wc_rating_count' );
				delete_post_meta( $product_id, '_wc_review_count' );
			}
		}

	}

	function woo_st_remove_filename_extension( $filename ) {

		$extension = strrchr( $filename, '.' );
		$filename = substr( $filename, 0, -strlen( $extension ) );

		return $filename;

	}

	function woo_st_get_order_statuses() {

		$terms = false;
		// Check if this is a WooCommerce 2.2+ instance
		$woocommerce_version = woo_get_woo_version();
		if( version_compare( $woocommerce_version, '2.2' ) >= 0 ) {
			// Convert Order Status array into our magic sauce
			$order_statuses = ( function_exists( 'wc_get_order_statuses' ) ? wc_get_order_statuses() : false );
			if( !empty( $order_statuses ) ) {
				$terms = array();
				$post_type = 'shop_order';
				$posts_count = wp_count_posts( $post_type );
				foreach( $order_statuses as $key => $order_status ) {
					$terms[] = (object)array(
						'term_id' => $key,
						'name' => $order_status,
						'slug' => $key,
						'count' => ( isset( $posts_count->$key ) ? $posts_count->$key : 0 )
					);
				}
			}
		} else {
			$term_taxonomy = 'shop_order_status';
			$args = array(
				'hide_empty' => 0
			);
			$terms = get_terms( $term_taxonomy, $args );
		}
		return $terms;

	}

	function woo_st_convert_sale_status( $sale_status = '' ) {

		$output = $sale_status;
		if( $sale_status ) {
			switch( $sale_status ) {

				case 'cancelled':
					$output = __( 'Cancelled', 'woocommerce-store-toolkit' );
					break;

				case 'completed':
					$output = __( 'Completed', 'woocommerce-store-toolkit' );
					break;

				case 'on-hold':
					$output = __( 'On-Hold', 'woocommerce-store-toolkit' );
					break;

				case 'pending':
					$output = __( 'Pending', 'woocommerce-store-toolkit' );
					break;

				case 'processing':
					$output = __( 'Processing', 'woocommerce-store-toolkit' );
					break;

				case 'refunded':
					$output = __( 'Refunded', 'woocommerce-store-toolkit' );
					break;

				case 'failed':
					$output = __( 'Failed', 'woocommerce-store-toolkit' );
					break;

			}
		}
		return $output;

	}

	function woo_st_generate_sample_products( $args = array() ) {

		$defaults = array(
			'limit' => 100,
			'product_name' => 'Sample Product %count%',
			'short_description' => 'Short description for Sample Product %count%',
			'description' => 'Description for Sample Product %count%',
			'sku' => 'SAMPLE-%count%'
		);
		$args = wp_parse_args( $args, $defaults );

		if( empty( $args['limit'] ) )
			return false;

		for( $i = 0; $i < $args['limit']; $i++ ) {

			// @mod - WC only lets us use create_product via the WC_API

			$avatar_args = array(
				'default' => 'retro',
				'size' => 512
			);

			$post_excerpt = '';
			$post_content = '';
			$data = array(
				'title' => str_replace( '%count%', $i, $args['product_name'] ),
				'status' => 'publish',
				'short_description' => str_replace( '%count%', $i, $args['short_description'] ),
				'description' => str_replace( '%count%', $i, $args['description'] ),
				'menu_order' => 0,
				'virtual' => false,
				'featured' => false,
				'sku' => str_replace( '%count%', $i, $args['sku'] ),
				'image' => array( get_avatar_url( sprintf( 'email-%d@example.com', $i ), $args ) )
			);

			$new_product = array(
				'post_title'   => wc_clean( $data['title'] ),
				'post_status'  => isset( $data['status'] ) ? wc_clean( $data['status'] ) : 'publish',
				'post_type'    => 'product',
				'post_excerpt' => isset( $data['short_description'] ) ? $post_excerpt : '',
				'post_content' => isset( $data['description'] ) ? $post_content : '',
				'post_author'  => get_current_user_id(),
				'menu_order'   => isset( $data['menu_order'] ) ? intval( $data['menu_order'] ) : 0
			);

			$post_ID = wp_insert_post( $new_product, true );

			if( is_wp_error( $post_ID ) ) {
				error_log( 'create_sample_product: ' . $post_ID->get_error_message() );
			}

			// Set the Product Type
			$product_type = null;
			$_product_type = get_the_terms( $post_ID, 'product_type' );
			if( is_array( $_product_type ) ) {
				$_product_type = current( $_product_type );
				$product_type  = $_product_type->slug;
			}

			// Virtual.
			if ( isset( $data['virtual'] ) ) {
				update_post_meta( $post_ID, '_virtual', ( true === $data['virtual'] ) ? 'yes' : 'no' );
			}

			// Featured Product.
			if ( isset( $data['featured'] ) ) {
				update_post_meta( $post_ID, '_featured', ( true === $data['featured'] ) ? 'yes' : 'no' );
			}

			// SKU.
			if ( isset( $data['sku'] ) ) {
				$unique_sku = wc_product_has_unique_sku( $post_ID, $data['sku'] );
				if( $unique_sku )
					update_post_meta( $post_ID, '_sku', $data['sku'] );
			}

			// Clear cache/transients.
			wc_delete_product_transients( $post_ID );

		}
		return true;

	}

	function woo_st_return_percentage( $after = 0, $before = 0, $display_html = true ) {

		$output = 0;
		if( absint( $after ) <> 0 && absint( $before ) <> 0 ) {
			$output = absint( ( ( absint( $after ) / absint( $before ) ) * 100 ) - 100 );
			if( $display_html && absint( $output ) > 0 )
				$output = '+' . $output;
		}
		return $output;

	}

	function woo_st_percentage_symbol_class( $after = 0, $before = 0 ) {

		$output = '';
		$percentage = woo_st_return_percentage( $after, $before, false );
		if( $percentage < 0 ) {
			$output = 'down';
		} else if( $percentage > 0 ) {
			$output = 'up';
		} else {
			$output = 'line';
		}
		$output = ' class="' . $output . '"';
		return $output;

	}

	function woo_st_settings_save() {

		// CRON settings
		$enable_cron = absint( $_POST['enable_cron'] );
		// Display additional notice if Enabled CRON is enabled/disabled
		if( woo_st_get_option( 'enable_cron', 0 ) <> $enable_cron ) {
			$message = sprintf( __( 'CRON support has been %s.', 'woocommerce-store-toolkit' ), ( ( $enable_cron == 1 ) ? __( 'enabled', 'woocommerce-store-toolkit' ) : __( 'disabled', 'woocommerce-store-toolkit' ) ) );
			woo_st_admin_notice( $message );
		}
		woo_st_update_option( 'enable_cron', $enable_cron );
		woo_st_update_option( 'secret_key', sanitize_text_field( $_POST['secret_key'] ) );

		$message = __( 'Changes have been saved.', 'woocommerce-store-toolkit' );
		woo_st_admin_notice( $message );

	}

	/* End of: WordPress Administration */

} else {

	/* Start of: Storefront */

	function woo_st_autocomplete_order_status( $order_id = 0, $posted ) {

		if( !empty( $order_id ) ) {
			if( class_exists( 'WC_Order' ) ) {
				$order = new WC_Order( $order_id );
				if( $order->get_total() == 0 ) {
					$order->update_status( 'completed', __( 'Auto-complete Order Status', 'woocommerce-store-toolkit' ) );
				}
			}
		}
		return false;

	}

	/* End of: Storefront */

}

// So we can view the Edit Product screen for individual Variations
function woo_st_admin_unlock_variations_screen( $args ) {

	$args['show_ui'] = true;
	return $args;

}

function woo_st_clear_dataset( $export_type = '', $data = false ) {

	global $wpdb;

	if( empty( $export_type ) )
		return false;

	// Commence the drop
	$output = false;
	woo_st_update_option( 'in_progress', $export_type );
	switch( $export_type ) {

		// WooCommerce

		case 'product':
			$post_type = array( 'product', 'product_variation' );
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_product', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'product' ) ) {
				$products = get_posts( $args );
				if( !empty( $products ) ) {
					foreach( $products as $product ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_post( $product, true );
							// Product Category
							if( taxonomy_exists( 'product_cat' ) )
								wp_set_object_terms( $product, null, 'product_cat' );
							// Product Tag
							if( taxonomy_exists( 'product_tag' ) )
								wp_set_object_terms( $product, null, 'product_tag' );
							// Product Brand
							$term_taxonomy = apply_filters( 'woo_st_brand_term_taxonomy', 'product_brand' );
							if( taxonomy_exists( $term_taxonomy ) )
								wp_set_object_terms( $product, null, $term_taxonomy );
							// Product Vendor
							if( taxonomy_exists( 'shop_vendor' ) )
								wp_set_object_terms( $product, null, 'shop_vendor' );
							// Attributes
							$attributes_sql = "SELECT `attribute_id` as ID, `attribute_name` as name, `attribute_label` as label, `attribute_type` as type FROM `" . $wpdb->prefix . "woocommerce_attribute_taxonomies`";
							$attributes = $wpdb->get_results( $attributes_sql );
							if( !empty( $attributes ) ) {
								foreach( $attributes as $attribute ) {
									if( taxonomy_exists( 'pa_' . $attribute->name ) )
										wp_set_object_terms( $product, null, 'pa_' . $attribute->name );
								}
							}
							if( function_exists( 'wc_delete_product_transients' ) )
								wc_delete_product_transients( $product );
							if( class_exists( 'WC_Comments' ) ) {
								$comments = new WC_Comments;
								if( method_exists( $comments, 'clear_transients' ) ) {
									$comments->clear_transients( $product );
								}
							}
						} else {
							error_log( sprintf( '[store-toolkit] Delete Product #%d', $product ) );
						}
					}
					unset( $products, $product, $attributes, $attribute );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'product' ) )
					break;
			}
			$output = true;
			if( !WOO_ST_DEBUG ) {
				delete_transient( 'wc_featured_products' );
			}
			break;

		case 'product_category':
			$term_taxonomy = 'product_cat';
			if( !empty( $data ) ) {
				foreach( $data as $single_category ) {
					$post_type = 'product';
					$args = array(
						'post_type' => $post_type,
						'fields' => 'ids',
						'tax_query' => array(
							array(
								'taxonomy' => $term_taxonomy,
								'field' => 'id',
								'terms' => $single_category
							)
						),
						'numberposts' => -1
					);

					// Allow Plugin/Theme authors to add support for tactical nukes
					$args = apply_filters( 'woo_st_clear_dataset_product_per_category', $args );

					$products = get_posts( $args );
					if( $products ) {
						foreach( $products as $product ) {
							if( !WOO_ST_DEBUG ) {
								wp_delete_post( $product, true );
							} else {
								error_log( sprintf( '[store-toolkit] Delete Product #%d by Product Category', $product ) );
							}
						}
						unset( $products, $product );
					}
				}
				unset( $data, $single_category );
			} else {
				$args = array(
					'hide_empty' => false,
					'number' => 100
				);

				// Allow Plugin/Theme authors to add support for tactical nukes
				$args = apply_filters( 'woo_st_clear_dataset_product_category', $args );

				// Loop through every 100 records until 0 is returned, might take awhile
				while( $count = woo_st_return_count( 'product_category' ) ) {
					$categories = get_terms( $term_taxonomy, $args );
					if( !empty( $categories ) ) {
						foreach( $categories as $category ) {
							if( !WOO_ST_DEBUG ) {
								wp_delete_term( $category->term_id, $term_taxonomy );
								$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->terms . "` WHERE `term_id` = %d", $category->term_id ) );
								$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->term_relationships . "` WHERE `term_taxonomy_id` = %d", $category->term_taxonomy_id ) );
								// Check if WooCommerce woocommerce_termmeta exists
								if( $wpdb->get_var( "SHOW TABLES LIKE '" . $wpdb->prefix . "woocommerce_termmeta'" ) )
									$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->prefix . "woocommerce_termmeta` WHERE `woocommerce_term_id` = %d", $category->term_id ) );
								if( function_exists( 'delete_woocommerce_term_meta' ) )
									delete_woocommerce_term_meta( $category->term_id, 'thumbnail_id' );
							} else {
								error_log( sprintf( '[store-toolkit] Delete Product Category #%d', $category->term_id ) );
							}
						}
						unset( $categories, $category );
					}
					// Check if count hasn't budged and we're in a permanent loop
					if( $count == woo_st_return_count( 'product_category' ) )
						break;
				}
				if( !WOO_ST_DEBUG ) {
					$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->term_taxonomy . "` WHERE `taxonomy` = %s", $term_taxonomy ) );
				}
			}
			$output = true;
			break;

		case 'product_tag':
			$term_taxonomy = 'product_tag';
			$args = array(
				'fields' => 'ids',
				'hide_empty' => false,
				'number' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_product_tag', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'product_tag' ) ) {
				$tags = get_terms( $term_taxonomy, $args );
				if( !empty( $tags ) ) {
					foreach( $tags as $tag ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_term( $tag, $term_taxonomy );
							$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->terms . "` WHERE `term_id` = %d", $tag ) );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Product Tag #%d', $tag ) );
						}
					}
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'product_tag' ) )
					break;
			}
			$output = true;
			break;

		case 'product_brand':
			$term_taxonomy = apply_filters( 'woo_st_brand_term_taxonomy', 'product_brand' );
			$args = array(
				'fields' => 'ids',
				'hide_empty' => false,
				'number' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_product_brand', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'product_brand' ) ) {
				$tags = get_terms( $term_taxonomy, $args );
				if( $tags ) {
					foreach( $tags as $tag ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_term( $tag, $term_taxonomy );
							$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->terms . "` WHERE `term_id` = %d", $tag ) );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Product Brand #%d', $tag ) );
						}
					}
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'product_brand' ) )
					break;
			}
			$output = true;
			break;

		case 'product_vendor':
			$term_taxonomy = 'shop_vendor';
			$args = array(
				'fields' => 'ids',
				'hide_empty' => false
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_product_vendor', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'product_vendor' ) ) {
				$tags = get_terms( $term_taxonomy, $args );
				if( $tags ) {
					foreach( $tags as $tag ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_term( $tag, $term_taxonomy );
							$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->terms . "` WHERE `term_id` = %d", $tag ) );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Product Vendor #%d', $tag ) );
						}
					}
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'product_vendor' ) )
					break;
			}
			$output = true;
			break;

		case 'product_image':
			$post_type = array( 'product', 'product_variation' );
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_status' => 'any',
				'numberposts' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_product_image', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'product_image' ) ) {
				$products = get_posts( $args );
				// Check each Product for images
				if( !empty( $products ) ) {
					$upload_dir = wp_upload_dir();
					foreach( $products as $product ) {
						$args = array(
							'post_type' => 'attachment',
							'post_parent' => $product,
							'post_status' => 'inherit',
							'post_mime_type' => 'image',
							'numberposts' => -1
						);
						$images = get_children( $args );
						if( !empty( $images ) ) {
							foreach( $images as $image ) {
								if( !WOO_ST_DEBUG ) {
									wp_delete_attachment( $image->ID, true );
								} else {
									error_log( sprintf( '[store-toolkit] Delete Product Image #%d', $image->ID ) );
								}
							}
							unset( $images, $image );
						}
					}
				} else {
					// Check for WooCommerce-related images
					$images_sql = "SELECT `post_id` AS `ID` FROM `" . $wpdb->postmeta . "` WHERE `meta_key` = '_woocommerce_exclude_image' AND `meta_value` = 0";
					$images = $wpdb->get_col( $images_sql );
					if( !empty( $images ) ) {
						foreach( $images as $image ) {
							if( !WOO_ST_DEBUG ) {
								wp_delete_attachment( $image, true );
							} else {
								error_log( sprintf( '[store-toolkit] Delete Product Image #%d', $image ) );
							}
						}
						unset( $images, $image );
					}
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'product_image' ) )
					break;
			}
			$output = true;
			break;

		case 'order':
			$post_type = 'shop_order';
			$term_taxonomy = 'shop_order_status';
			$woocommerce_version = woo_get_woo_version();
			if( !empty( $data ) ) {
				foreach( $data as $single_order ) {
					$args = array(
						'post_type' => $post_type,
						'fields' => 'ids',
						'numberposts' => -1
					);
					// Check if this is a pre-WooCommerce 2.2 instance
					if( version_compare( $woocommerce_version, '2.2' ) >= 0 ) {
						$args['post_status'] = $single_order;
					} else {
						$args['tax_query'] = array(
							array(
								'taxonomy' => $term_taxonomy,
								'field' => 'id',
								'terms' => $single_order
							)
						);
					}

					// Allow Plugin/Theme authors to add support for tactical nukes
					$args = apply_filters( 'woo_st_clear_dataset_order_per_status', $args );

					$orders = new WP_Query( $args );
					if( !empty( $orders->posts ) ) {
						foreach( $orders->posts as $order ) {
							if( !empty( $order ) ) {
								if( !WOO_ST_DEBUG ) {
									wp_delete_post( $order, true );
									$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->term_relationships . "` WHERE `object_id` = %d", $order ) );
								} else {
									error_log( sprintf( '[store-toolkit] Delete Order #%d', $order ) );
								}
							}
						}
						unset( $orders, $order );
					}
				}
				unset( $data, $single_order );
			} else {
				$args = array(
					'post_type' => $post_type,
					'fields' => 'ids',
					'post_status' => 'any',
					'numberposts' => 100
				);

				// Allow Plugin/Theme authors to add support for tactical nukes
				$args = apply_filters( 'woo_st_clear_dataset_order', $args );

				// Loop through every 100 records until 0 is returned, might take awhile
				while( $count = woo_st_return_count( 'order' ) ) {
					$orders = new WP_Query( $args );
					if( !empty( $orders->posts ) ) {
						foreach( $orders->posts as $order ) {
							if( !empty( $order ) ) {
								if( !WOO_ST_DEBUG ) {
									wp_delete_post( $order, true );
									$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->term_relationships . "` WHERE `object_id` = %d", $order ) );
								} else {
									error_log( sprintf( '[store-toolkit] Delete Order #%d', $order ) );
								}
							}
						}
						unset( $orders, $order );
					}
					// Check if count hasn't budged and we're in a permanent loop
					if( $count == woo_st_return_count( 'order' ) )
						break;
				}
				if( !WOO_ST_DEBUG ) {
					$wpdb->query( "TRUNCATE TABLE `" . $wpdb->prefix . "woocommerce_order_items`" );
					$wpdb->query( "TRUNCATE TABLE `" . $wpdb->prefix . "woocommerce_order_itemmeta`" );
				}
			}
			$output = true;
			break;

		case 'tax_rate':
			if( !WOO_ST_DEBUG ) {
				$wpdb->query( "TRUNCATE TABLE `" . $wpdb->prefix . "woocommerce_tax_rates`" );
				$wpdb->query( "TRUNCATE TABLE `" . $wpdb->prefix . "woocommerce_tax_rate_locations`" );
			}
			$output = true;
			break;

		case 'download_permission':
			if( !WOO_ST_DEBUG ) {
				$wpdb->query( "TRUNCATE TABLE `" . $wpdb->prefix . "woocommerce_downloadable_product_permissions`" );
			}
			$output = true;
			break;

		case 'coupon':
			$post_type = 'shop_coupon';
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_coupon', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'coupon' ) ) {
				$coupons = get_posts( $args );
				if( !empty( $coupons ) ) {
					foreach( $coupons as $coupon ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_post( $coupon, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Coupon #%d', $coupon ) );
						}
					}
					unset( $coupons, $coupon );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'coupon' ) )
					break;
			}
			$output = true;
			break;

		case 'shipping_class':
			$term_taxonomy = 'product_shipping_class';
			$args = array(
				'fields' => 'ids',
				'hide_empty' => false,
				'number' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_shipping_class', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'shipping_class' ) ) {
				$shipping_classes = get_terms( $term_taxonomy, $args );
				if( !empty( $shipping_classes ) ) {
					foreach( $shipping_classes as $shipping_class ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_term( $shipping_class, $term_taxonomy );
							$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->terms . "` WHERE `term_id` = %d", $shipping_class ) );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Shipping Class #%d', $shipping_class ) );
						}
					}
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'shipping_class' ) )
					break;
			}
			$output = true;
			break;

		case 'attribute':
			if( isset( $_POST['woo_st_attributes'] ) ) {
				$attributes_sql = "SELECT `attribute_id` as ID, `attribute_name` as name, `attribute_label` as label, `attribute_type` as type FROM `" . $wpdb->prefix . "woocommerce_attribute_taxonomies`";
				$attributes = $wpdb->get_results( $attributes_sql );
				if( $attributes ) {
					foreach( $attributes as $attribute ) {
						$terms_sql = $wpdb->prepare( "SELECT `term_id` FROM `" . $wpdb->prefix . "term_taxonomy` WHERE `taxonomy` = %s", 'pa_' . $attribute->name );
						$terms = $wpdb->get_results( $terms_sql );
						if( !empty( $terms ) ) {
							foreach( $terms as $term ) {
								if( !WOO_ST_DEBUG ) {
									wp_delete_term( $term->term_id, 'pa_' . $attribute->name );
								} else {
									error_log( sprintf( '[store-toolkit] Delete Attribute #%d', $term->term_id ) );
								}
							}
						}
						if( !WOO_ST_DEBUG ) {
							$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->term_relationships . "` WHERE `term_taxonomy_id` = %d", $attribute->ID ) );
							// Check if WooCommerce woocommerce_termmeta exists
							if( $wpdb->get_var( "SHOW TABLES LIKE '" . $wpdb->prefix . "woocommerce_termmeta'" ) )
								$wpdb->query( $wpdb->prepare( "DELETE FROM `" . $wpdb->prefix . "woocommerce_termmeta` WHERE `meta_key` = %s", 'order_pa_' . $attribute->name ) );
						}
					}
				}
				if( !WOO_ST_DEBUG ) {
					$wpdb->query( "DELETE FROM `" . $wpdb->prefix . "woocommerce_attribute_taxonomies`" );
					delete_transient( 'wc_attribute_taxonomies' );
				}
			}
			$output = true;
			break;

		// 3rd Party

		case 'credit_card':
			$post_type = 'offline_payment';
			$args = array( 
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_credit_card', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'credit_card' ) ) {
				$credit_cards = get_posts( $args );
				if( !empty( $credit_cards ) ) {
					foreach( $credit_cards as $credit_card ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_post( $credit_card, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Credit Card #%d', $credit_card ) );
						}
					}
					unset( $credit_cards, $credit_card );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'credit_card' ) )
					break;
			}
			$output = true;
			break;

		case 'store_export_csv':
			$post_type = 'attachment';
			$post_mime_types = array( 'text/csv' );
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_mime_type' => $post_mime_types,
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100,
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_store_export_csv', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'store_export_csv' ) ) {
				$images = get_posts( $args );
				if( !empty( $images ) ) {
					foreach( $images as $image ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_attachment( $image, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Store Export (CSV) #%d', $image ) );
						}
					}
					unset( $images, $image );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'store_export_csv' ) )
					break;
			}
			$output = true;
			break;

		case 'store_export_tsv':
			$post_type = 'attachment';
			$post_mime_types = array( 'text/tab-separated-values' );
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_mime_type' => $post_mime_types,
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100,
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_store_export_tsv', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'store_export_tsv' ) ) {
				$images = get_posts( $args );
				if( !empty( $images ) ) {
					foreach( $images as $image ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_attachment( $image, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Store Export (TSV) #%d', $image ) );
						}
					}
					unset( $images, $image );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'store_export_tsv' ) )
					break;
			}
			$output = true;
			break;

		case 'store_export_xls':
			$post_type = 'attachment';
			$post_mime_types = array( 'application/vnd.ms-excel' );
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_mime_type' => $post_mime_types,
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100,
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_store_export_xls', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'store_export_xls' ) ) {
				$images = get_posts( $args );
				if( !empty( $images ) ) {
					foreach( $images as $image ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_attachment( $image, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Store Export (XLS) #%d', $image ) );
						}
					}
					unset( $images, $image );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'store_export_xls' ) )
					break;
			}
			$output = true;
			break;

		case 'store_export_xlsx':
			$post_type = 'attachment';
			$post_mime_types = array( 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' );
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_mime_type' => $post_mime_types,
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100,
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_store_export_xlsx', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'store_export_xlsx' ) ) {
				$images = get_posts( $args );
				if( !empty( $images ) ) {
					foreach( $images as $image ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_attachment( $image, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Store Export (XLSX) #%d', $image ) );
						}
					}
					unset( $images, $image );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'store_export_xlsx' ) )
					break;
			}
			$output = true;
			break;

		case 'store_export_xml':
			$post_type = 'attachment';
			$post_mime_types = array( 'application/xml' );
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_mime_type' => $post_mime_types,
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100,
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_store_export_xml', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'store_export_xml' ) ) {
				$images = get_posts( $args );
				if( !empty( $images ) ) {
					foreach( $images as $image ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_attachment( $image, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Store Export (XML) #%d', $image ) );
						}
					}
					unset( $images, $image );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'store_export_xml' ) )
					break;
			}
			$output = true;
			break;

		case 'store_export_rss':
			$post_type = 'attachment';
			$post_mime_types = array( 'application/rss+xml' );
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_mime_type' => $post_mime_types,
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100,
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_store_export_rss', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'store_export_rss' ) ) {
				$images = get_posts( $args );
				if( !empty( $images ) ) {
					foreach( $images as $image ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_attachment( $image, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Store Export (RSS) #%d', $image ) );
						}
					}
					unset( $images, $image );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'store_export_rss' ) )
					break;
			}
			$output = true;
			break;

		case 'google_product_feed':
			if( !WOO_ST_DEBUG ) {
				if( $wpdb->get_var( "SHOW TABLES LIKE '" . $wpdb->prefix . "woocommerce_gpf_google_taxonomy'" ) )
					$wpdb->query( "TRUNCATE TABLE `" . $wpdb->prefix . "woocommerce_gpf_google_taxonomy`" );
			}
			$output = true;
			break;

		// WordPress

		case 'post':
			$post_type = 'post';
			$args = array( 
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_post', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'post' ) ) {
				$posts = get_posts( $args );
				if( $posts ) {
					foreach( $posts as $post ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_post( $post, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Post #%d', $image ) );
						}
					}
					unset( $posts, $post );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'post' ) )
					break;
			}
			$output = true;
			break;

		case 'post_category':
			$term_taxonomy = 'category';
			$args = array(
				'hide_empty' => false,
				'number' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_post_category', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'post_category' ) ) {
				$post_categories = get_terms( $term_taxonomy, $args );
				if( $post_categories ) {
					foreach( $post_categories as $post_category ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_term( $post_category->term_id, $term_taxonomy );
							$wpdb->query( "DELETE FROM `" . $wpdb->terms . "` WHERE `term_id` = " . $post_category->term_id );
							$wpdb->query( "DELETE FROM `" . $wpdb->term_relationships . "` WHERE `term_taxonomy_id` = " . $post_category->term_taxonomy_id );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Post Category #%d', $post_category->term_id ) );
						}
					}
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'post_category' ) )
					break;
			}
			if( !WOO_ST_DEBUG ) {
				$wpdb->query( "DELETE FROM `" . $wpdb->term_taxonomy . "` WHERE `taxonomy` = '" . $term_taxonomy . "'" );
			}
			$output = true;
			break;

		case 'post_tag':
			$term_taxonomy = 'post_tag';
			$args = array(
				'hide_empty' => false,
				'number' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_post_tag', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'post_tag' ) ) {
				$post_tags = get_terms( $term_taxonomy, $args );
				if( $post_tags ) {
					foreach( $post_tags as $post_tag ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_term( $post_tag->term_id, $term_taxonomy );
							$wpdb->query( "DELETE FROM `" . $wpdb->terms . "` WHERE `term_id` = " . $post_tag->term_id );
							$wpdb->query( "DELETE FROM `" . $wpdb->term_relationships . "` WHERE `term_taxonomy_id` = " . $post_tag->term_taxonomy_id );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Post Tag #%d', $post_tag->term_id ) );
						}
					}
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'post_tag' ) )
					break;
			}
			if( !WOO_ST_DEBUG ) {
				$wpdb->query( "DELETE FROM `" . $wpdb->term_taxonomy . "` WHERE `taxonomy` = '" . $term_taxonomy . "'" );
			}
			$output = true;
			break;

		case 'link':
			if( !WOO_ST_DEBUG ) {
				$wpdb->query( "TRUNCATE TABLE `" . $wpdb->prefix . "links`" );
			}
			$output = true;
			break;

		case 'comment':
			$args = array(
				'number' => 100
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_comment', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'comment' ) ) {
				$comments = get_comments( $args );
				if( !empty( $comments ) ) {
					foreach( $comments as $comment ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_comment( $comment->comment_ID, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Comment #%d', $comment->comment_ID ) );
						}
					}
					unset( $comments, $comment );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'comment' ) )
					break;
			}
			$output = true;
			break;

		case 'media_image':
			$post_type = 'attachment';
			$post_mime_types = array( 'image/jpg', 'image/jpeg', 'image/jpe', 'image/gif', 'image/png' );
			$args = array(
				'post_type' => $post_type,
				'fields' => 'ids',
				'post_mime_type' => $post_mime_types,
				'post_status' => woo_st_post_statuses(),
				'numberposts' => 100,
			);

			// Allow Plugin/Theme authors to add support for tactical nukes
			$args = apply_filters( 'woo_st_clear_dataset_media_image', $args );

			// Loop through every 100 records until 0 is returned, might take awhile
			while( $count = woo_st_return_count( 'media_image' ) ) {
				$images = get_posts( $args );
				if( !empty( $images ) ) {
					foreach( $images as $image ) {
						if( !WOO_ST_DEBUG ) {
							wp_delete_attachment( $image, true );
						} else {
							error_log( sprintf( '[store-toolkit] Delete Image #%d', $image ) );
						}
					}
					unset( $images, $image );
				}
				// Check if count hasn't budged and we're in a permanent loop
				if( $count == woo_st_return_count( 'media_image' ) )
					break;
			}
			$output = true;
			break;

	}
	// Mission accomplished
	delete_option( WOO_ST_PREFIX . '_in_progress' );
	return $output;

}

// Returns a list of allowed Export type statuses
function woo_st_post_statuses() {

	$output = array(
		'publish',
		'pending',
		'draft',
		'auto-draft',
		'future',
		'private',
		'inherit',
		'trash'
	);
	return $output;

}

// Returns number of an Export type prior to nuke, used on Store Toolkit screen
function woo_st_return_count( $export_type = '' ) {

	global $wpdb;

	$count_sql = null;
	switch( $export_type ) {

		// WooCommerce

		case 'product':
			$post_type = array( 'product', 'product_variation' );
			$args = array(
				'post_type' => $post_type,
				'posts_per_page' => 1
			);
			$query = new WP_Query( $args );
			$count = $query->found_posts;
			break;

		case 'product_image':
			$count_sql = "SELECT COUNT(`post_id`) FROM `" . $wpdb->postmeta . "` WHERE `meta_key` = '_woocommerce_exclude_image'";
			break;

		case 'product_category':
			$term_taxonomy = 'product_cat';
			if( taxonomy_exists( $term_taxonomy ) )
				$count = wp_count_terms( $term_taxonomy );
			break;

		case 'product_tag':
			$term_taxonomy = 'product_tag';
			if( taxonomy_exists( $term_taxonomy ) )
				$count = wp_count_terms( $term_taxonomy );
			break;

		case 'product_brand':
			$term_taxonomy = apply_filters( 'woo_st_brand_term_taxonomy', 'product_brand' );
			if( taxonomy_exists( $term_taxonomy ) )
				$count = wp_count_terms( $term_taxonomy );
			break;

		case 'product_vendor':
			$term_taxonomy = 'shop_vendor';
			if( taxonomy_exists( $term_taxonomy ) )
				$count = wp_count_terms( $term_taxonomy );
			break;

		case 'order':
			$post_type = 'shop_order';
			if( post_type_exists( $post_type ) )
				$count = wp_count_posts( $post_type );
			break;

		case 'tax_rate':
			$count_sql = "SELECT COUNT(`tax_rate_id`) FROM `" . $wpdb->prefix . "woocommerce_tax_rates`";
			break;

		case 'download_permission':
			$count_sql = "SELECT COUNT(`download_id`) FROM `" . $wpdb->prefix . "woocommerce_downloadable_product_permissions`";
			break;

		case 'coupon':
			$post_type = 'shop_coupon';
			if( post_type_exists( $post_type ) )
				$count = wp_count_posts( $post_type );
			break;

		case 'shipping_class':
			$term_taxonomy = apply_filters( 'woo_st_shipping_class_term_taxonomy', 'product_shipping_class' );
			if( taxonomy_exists( $term_taxonomy ) )
				$count = wp_count_terms( $term_taxonomy );
			break;

		case 'attribute':
			$count_sql = "SELECT COUNT(`attribute_id`) FROM `" . $wpdb->prefix . "woocommerce_attribute_taxonomies`";
			break;

		// 3rd Party

		case 'credit_card':
			$post_type = 'offline_payment';
			if( post_type_exists( $post_type ) )
				$count = wp_count_posts( $post_type );
			break;

		case 'store_export_csv':
			$count_sql = "SELECT COUNT(`ID`) FROM `" . $wpdb->posts . "` WHERE `post_mime_type` = 'text/csv'";
			break;

		case 'store_export_tsv':
			$count_sql = "SELECT COUNT(`ID`) FROM `" . $wpdb->posts . "` WHERE `post_mime_type` = 'text/tab-separated-values'";
			break;

		case 'store_export_xls':
			$count_sql = "SELECT COUNT(`ID`) FROM `" . $wpdb->posts . "` WHERE `post_mime_type` = 'application/vnd.ms-excel'";
			break;

		case 'store_export_xlsx':
			$count_sql = "SELECT COUNT(`ID`) FROM `" . $wpdb->posts . "` WHERE `post_mime_type` = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'";
			break;

		case 'store_export_xml':
			$count_sql = "SELECT COUNT(`ID`) FROM `" . $wpdb->posts . "` WHERE `post_mime_type` = 'application/xml'";
			break;

		case 'store_export_rss':
			$count_sql = "SELECT COUNT(`ID`) FROM `" . $wpdb->posts . "` WHERE `post_mime_type` = 'application/rss+xml'";
			break;

		case 'google_product_feed':
			if( $wpdb->get_var( "SHOW TABLES LIKE '" . $wpdb->prefix . "woocommerce_gpf_google_taxonomy'" ) )
				$count_sql = "SELECT COUNT(`taxonomy_term`) FROM `" . $wpdb->prefix . "woocommerce_gpf_google_taxonomy`";
			break;

		// WordPress

		case 'post':
			$post_type = 'post';
			if( post_type_exists( $post_type ) )
				$count = wp_count_posts( $post_type );
			break;

		case 'post_category':
			$term_taxonomy = 'category';
			if( taxonomy_exists( $term_taxonomy ) )
				$count = wp_count_terms( $term_taxonomy );
			break;

		case 'post_tag':
			$term_taxonomy = 'post_tag';
			if( taxonomy_exists( $term_taxonomy ) )
				$count = wp_count_terms( $term_taxonomy );
			break;

		case 'link':
			$count_sql = "SELECT COUNT(`link_id`) FROM `" . $wpdb->prefix . "links`";
			break;

		case 'comment':
			$count = wp_count_comments();
			break;

		case 'media_image':
			$count_sql = "SELECT COUNT(`ID`) FROM `" . $wpdb->posts . "` WHERE `post_mime_type` LIKE 'image%'";
			break;

	}
	if( isset( $count ) || $count_sql ) {
		if( isset( $count ) ) {
			if( is_object( $count ) ) {
				$count_object = $count;
				$count = 0;
				foreach( $count_object as $key => $item )
					$count = $item + $count;
			}
			return $count;
		} else if( !empty( $count_sql ) ) {
			$count = $wpdb->get_var( $count_sql );
		} else {
			$count = 0;
		}
		return $count;
	} else {
		return 0;
	}

}

// Provided by Pippin Williamson, mentioned on WP Beginner (http://www.wpbeginner.com/wp-tutorials/how-to-display-a-users-ip-address-in-wordpress/)
function woo_st_get_visitor_ip_address() {

	if( !empty( $_SERVER['HTTP_CLIENT_IP'] ) ) {
		//check ip from share internet
		$ip = $_SERVER['HTTP_CLIENT_IP'];
	} elseif ( ! empty( $_SERVER['HTTP_X_FORWARDED_FOR'] ) ) {
		//to check ip is pass from proxy
		$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
	} else {
		$ip = $_SERVER['REMOTE_ADDR'];
	}
	return apply_filters( 'woo_st_get_visitor_ip_address', $ip );

}

function woo_st_cron_nuke() {

	$output = false;

	// Let's prepare the nuke data
	$datasets = apply_filters( 'woo_st_cron_allowed_dataset_types', array_keys( woo_st_get_dataset_types() ) );
	$type = ( isset( $_GET['type'] ) ? sanitize_text_field( $_GET['type'] ) : $type );
	if( empty( $type ) ) {
		woo_st_error_log( sprintf( 'Error: %s', __( 'No dataset type was provided', 'woocommerce-store-toolkit' ) ) );
		return;
	}
	// Check that the type is in the list of allowed datasets
	if( !in_array( $type, $datasets ) ) {
		woo_st_error_log( sprintf( 'Error: %s', __( 'An invalid export type was provided', 'woocommerce-store-toolkit' ) ) );
		return;
	}
	$output = woo_st_clear_dataset( $type );

	return $output;

}

function woo_st_get_dataset_types() {

	$types = array(
		'product',
		'product_category',
		'product_tag',
		'product_brand',
		'product_vendor',
		'product_image',
		'coupon',
		'attribute',
		'order',
		'tax_rate',
		'download_permission',
		'credit_card',
		'store_export_csv',
		'store_export_tsv',
		'store_export_xls',
		'store_export_xlsx',
		'store_export_xml',
		'store_export_rss',
		'google_product_feed',
		'post',
		'post_category',
		'post_tag',
		'link',
		'comment',
		'media_image'
	);
	return $types;

}

function woo_st_error_log( $message = '' ) {

	if( $message == '' )
		return;

	if( class_exists( 'WC_Logger' ) ) {
		$logger = new WC_Logger();
		$logger->add( WOO_ST_PREFIX, $message );
		return true;
	} else {
		// Fallback where the WooCommerce logging engine is unavailable
		error_log( sprintf( '[store-toolkit] %s', $message ) );
	}

}

function woo_st_get_option( $option = null, $default = false, $allow_empty = false ) {

	$output = false;
	if( $option !== null ) {
		$separator = '_';
		$output = get_option( WOO_ST_PREFIX . $separator . $option, $default );
		if( $allow_empty == false && $output != 0 && ( $output == false || $output == '' ) )
			$output = $default;
	}
	return $output;

}

function woo_st_update_option( $option = null, $value = null ) {

	$output = false;
	if( $option !== null && $value !== null ) {
		$separator = '_';
		$output = update_option( WOO_ST_PREFIX . $separator . $option, $value );
	}
	return $output;

}
?>
<?php
require_once 'paginate.php';

class Wppbe
{
	protected $loader;
	protected $plugin_slug;
	protected $version;

	public function __construct()
	{
		$this->plugin_slug = 'wppbe-slug';
		$this->version = '2.0';

		$this->load_actions();
	}

	private function load_actions()
	{
		// Load Text Domain
		add_action( 'plugins_loaded', array( $this, 'load_text_domain') );

		//Adding Admin Styles And Scripts
		add_action( 'admin_enqueue_scripts', array($this, 'action_enqueue_styles') );
		add_action( 'admin_enqueue_scripts', array($this, 'action_enqueue_scripts') );

		//Adding Menu and Admin Page
		add_action( 'admin_menu', array($this, 'action_register_admin_page') );

		//Ajax: Getting Products
		add_action('wp_ajax_get_results', array( $this, 'wppbe_show_products'));
		//Ajax: Updating Product Prices
		add_action('wp_ajax_update_simple_product', array( $this, 'update_simple_product'));
		//Ajax: Sync Product Variations With Parent Product for a Variable Product
		add_action('wp_ajax_update_variable_product', array( $this, 'wppbe_update_variable_product'));
		//Ajax: Update Table <tr>
		add_action('wp_ajax_update_table_tr', array( $this, 'wppbe_update_table_tr'));
		//Ajax: Delete a Product
		add_action('wp_ajax_delete_product', array( $this, 'wppbe_delete_product'));
		//Ajax: Update a Product's Price
		add_action('wp_ajax_update_options', array( $this, 'wppbe_update_options'));
	}

	private function wppbe_get_products_query($query_type = NULL, $paginate_start = NULL, $per_page = NULL, $cats_array = NULL, $search_string = NULL)
	{
		GLOBAL $wpdb;
		$SQL = ''; $SEPERATE = ' ';

		if(is_null($query_type))
		{
			$SQL .= 'SELECT DISTINCT P.*'  . $SEPERATE;
		}
		else if($query_type === 'count')
		{
			$SQL .= 'SELECT count(DISTINCT P.ID) AS `Count`' . $SEPERATE;
		}

		$SQL .= "FROM					$wpdb->posts								AS P
						 INNER JOIN 	$wpdb->term_relationships 	AS TR 	ON		TR.object_id 				= P.ID
						 INNER JOIN 	$wpdb->term_taxonomy 				AS TT 	ON		TT.term_taxonomy_id = TR.term_taxonomy_id
						 INNER JOIN		$wpdb->terms								AS T		ON		T.term_id 					= TT.term_id" . $SEPERATE;

		$SQL .= "WHERE" . $SEPERATE;

		$condition_flag = $array_flag = FALSE;
		if(!is_null($cats_array) AND !empty($cats_array))
		{
			$SQL .= "TT.taxonomy = 'product_cat' AND T.term_id IN(" . implode(',', $cats_array) . ")" . $SEPERATE;
			$condition_flag = TRUE; $array_flag = TRUE;
		}

		if(!is_null($search_string) AND $search_string != '')
		{
			if($array_flag)
				$SQL .= "AND" . $SEPERATE;
			$SQL .= "P.post_title like '%" . esc_sql( $wpdb->esc_like( $search_string ) ) . "%'" . $SEPERATE;
			$condition_flag = TRUE;
		}

		if($condition_flag)
			$SQL .= "AND P.post_type = 'product' AND P.post_status = 'publish'" . $SEPERATE;
		else
			$SQL .= "P.post_type = 'product' AND P.post_status = 'publish'" . $SEPERATE;

		if(!is_null($paginate_start) AND !is_null($per_page))
		{
			$SQL .= "LIMIT $paginate_start , $per_page";
		}

		return $SQL;
	}

	private function wpdb_do_queries($cats_array, $search_string, $per_page)
	{
		GLOBAL $wpdb;

		$pagination_query =	$this->wppbe_get_products_query('count', NULL, NULL, $cats_array, $search_string);
		$result_query 		=	$wpdb->get_results($pagination_query);

		$result_count = $result_query[0]->Count;
		$pages 				= ceil($result_count / $per_page);
		$current_page = $_POST['current_page'];
		$start 				= ($current_page - 1) * $per_page;

		$query_string = $this->wppbe_get_products_query(NULL, $start, $per_page, $cats_array, $search_string);
		$products 		= $wpdb->get_results($query_string);

		$pagination_string = getPaginationString($current_page, $result_count, $per_page, 2, "#", NULL);

		return array(
			'pagination_string'	=> 	$pagination_string,
			'products'					=>	$products
		);
	}

	private function get_product_summary($_product)
	{
		$output = '';
		if($_product->is_on_sale())
			$output .= '<span class="wppbe_psummary_span onsale_span">On Sale</span>';
		if($_product->is_in_stock())
			$output .= '<span class="wppbe_psummary_span instock_span">in Stock</span>';
		if($_product->manage_stock == "yes" && !$_product->is_in_stock())
			$output .= '<span class="wppbe_psummary_span outofstock_span">Out Of Stock</span>';
		if($_product->get_type() == 'simple')
			$output .= '<span class="wppbe_psummary_span ptype_simple_span">simple product</span>';
		elseif($_product->get_type() == 'variable')
			$output .= '<span class="wppbe_psummary_span ptype_variable_span">variable product</span>';
		else
			$output .= '<span class="wppbe_psummary_span ptype_pothertypes_span">' . $_product->get_type() . '</span>';
		//print_r(get_object_vars($_product)); die();
		return $output;
	}

	private function get_product_prices($_product)
	{
		$output = '';
		if($_product->is_type('simple'))
		{
			$output .= '<table class="wppbe_simple_prices">';
			$output .= '<tr>';
			$output .= '<td><label>' . __('Regular Price', 'wppbe') . '</label></td>';
			$output .= '<td><input type="text" value="' . $_product->get_regular_price() . '" pid="rp-' . $_product->id . '"></td>';
			$output .= '</tr>';
			$output .= '<tr>';
			$output .= '<td><label>' . __('Sale Price', 'wppbe') . '</label></td>';
			$output .= '<td><input type="text" value="' . $_product->get_sale_price() . '" pid="sp-' . $_product->id . '"></td>';
			$output .= '</tr>';
			$output .= '</table>';
		}
		elseif($_product->is_type('variable'))
		{
			$variations = $_product->get_available_variations();
			$output .= '<table class="wppbe_variable_prices">';
			$output .= '<tr>';
			$output .= '<th></th>';
			$output .= '<th>' . __('Regular Price', 'wppbe') . '</th>';
			$output .= '<th>' . __('Sale Price', 'wppbe') . '</th>';
			$output .= '</tr>';
			foreach($variations as $vari)
			{
				$product_variation = new WC_Product_Variation($vari['variation_id']);

				foreach($vari['attributes'] as $attr)
				{
						$output .= '<tr>';
						$output .= '<td>' . urldecode($attr) . '</td>';
						$output .= '<td><input type="text" value="' . $product_variation->regular_price . '" pid="rp-' 	. $vari['variation_id'] . '"></td>';
						$output .= '<td><input type="text" value="' . $product_variation->sale_price 		. '" pid="sp-' 	. $vari['variation_id'] . '"></td>';
						$output .= '</tr>';
				}
			}
			$output .= '</table>';
		}
		return $output;
	}

	private function get_single_product_tr($product_id)
	{
		$product = get_post($product_id);
		$_product = wc_get_product( $product->ID );

		$output = '';
		$output .= '<tr id="' . $product->ID . '">';

		// Title
		$output .= '<td class="pr_title_td">';
			$output .= '<div class="pr_thumb_td col-md-3">';
			if( get_the_post_thumbnail($product->ID) )
			{
				$output .= get_the_post_thumbnail( $product->ID, array(80, 80) );
			}
			else
			{
				$output .= '<img src="' . plugin_dir_url( __DIR__ ) . '/admin/css/no-product.png">';
			}
			$output .= '</div>';
			$output .= '<div class="pr_title_price_td col-md-8">';
			$output .= '<input type="text" value="' . $product->post_title . '" pid="' . $product->ID . '">';
			$output .= '<p>' . $_product->get_price_html() . '</p>';
			$output .= '</div>';
		$output .= '</td>';

		// Summary
		$output .= '<td class="pr_summary_td">';
		$output .= $this->get_product_summary($_product);
		$output .= '</td>';

		// Prices
		$output .= '<td class="pr_prices_td">';
		$output .= $this->get_product_prices($_product);
		$output .= '</td>';

		// Controlls
		$output .= '<td class="pr_controlls_td">';
		if($_product->is_type('variable'))
		{
			$pids = array();
			$variations = $_product->get_available_variations();
			foreach($variations as $vari)
			{
				$pids[] = $vari['variation_id'];
			}
			$output .= '<a href="#" class="btn btn-success price-update-btn" pid="' . implode("-", $pids) . '" parent_pid="' . $product->ID . '" ptype="variable">' . __('Update', 'wppbe') . '</a>';
		}
		else
		{
			$output .= '<a href="#" class="btn btn-success price-update-btn" pid="' . $_product->id . '" ptype="simple">' . __('Update', 'wppbe') . '</a>';
		}
		$output .= '<a href="#" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger price-delete-btn" pid="' . $_product->id . '">' . __('Delete', 'wppbe') . '</a>';
		$output .= '</td>';

		$output .= '</tr>';
		return $output;
	}

	public function wppbe_update_table_tr()
	{
		$product_id = isset($_POST['pid']) ? $_POST['pid'] : -1;
		echo $this->get_single_product_tr($product_id);
		wp_die();
	}

	public function wppbe_show_products()
	{
		$output 					= $search_string = '';
		$cats_array 			= $wpdb_do_queries = array();
		$per_page_option 	= get_option('wppbe_show_products_page_limit');
		$per_page 				= ($per_page_option && $per_page_option != 0) ? $per_page_option : 500 ;

		if(isset($_POST['cats_array']))
			$cats_array 		= $_POST['cats_array'];
		if(isset($_POST['search_string']))
			$search_string 	= $_POST['search_string'];

		$wpdb_do_queries = $this->wpdb_do_queries($cats_array, $search_string, $per_page);

		$output 	.= '<div class="wppbe_products_result">';
		$output 	.= '<h3 class="">' . __( 'Products', 'wppbe' ) . '</h3>';
		if(!empty($wpdb_do_queries['products']))
		{
			$output 	.= '<table class="table">';
			$output 	.= '<thead>
					<tr>
							<th>' . __( 'Title', 'wppbe' ) . '</th>
							<th>' . __( 'Summary', 'wppbe' ) . '</th>
							<th>' . __( 'Prices', 'wppbe' ) . '</th>
							<th></th>
					</tr>
			</thead>';
			$output .= '<tbody>';

			foreach($wpdb_do_queries['products'] as $product)
			{
				$output .= $this->get_single_product_tr($product->ID);
			}

			$output .= '</tbody>';
			$output .= '</table>';
			$output .= '</div></div></div>';
			$output .= $wpdb_do_queries['pagination_string'];
		}
		else
		{
			$output .= '<p>' . __( 'No Products to Show', 'wppbe' ) . '</p>';
		}

		echo $output;

	  wp_die();
	}

	public function update_simple_product()
	{
		$pid 		= $_POST['pid'];
		$rprice = $_POST['rprice'];
		$sprice = $_POST['sprice'];

		if($rprice == 0 )
		{
			update_post_meta( $pid, '_regular_price', 0 );
			update_post_meta( $pid, '_sale_price', 		NULL );
			update_post_meta( $pid, '_price', 				0	);
		}
		elseif($sprice == 0)
		{
			update_post_meta( $pid, '_regular_price', $rprice );
			update_post_meta( $pid, '_sale_price', 		NULL );
			update_post_meta( $pid, '_price', 				$rprice	);
		}
		else
		{
			update_post_meta( $pid, '_regular_price', $rprice );
			update_post_meta( $pid, '_sale_price', 		$sprice );
			update_post_meta( $pid, '_price', 				$sprice	);
		}

		$post_title = isset($_POST['ptitle']) ? $_POST['ptitle'] : '';
  	wp_update_post( array('ID' => $pid, 'post_title' => $post_title) );

		echo '';
	  wp_die();
	}

	public function wppbe_delete_product()
	{
		$pid 	 = isset($_POST['pid']) 	? $_POST['pid'] 	: -1;
		$state = isset($_POST['state']) ? $_POST['state'] : 'trash';

		if($state == "trash")
		{
			wp_trash_post($pid);
		}
		elseif($sate == "delete")
		{
			wp_delete_post($pid);
		}

		die();
	}

	private function wppbe_update_variation_price($pid, $rprice, $sprice)
	{
		if($rprice == 0 )
		{
			update_post_meta( $pid, '_regular_price', 0 );
			update_post_meta( $pid, '_sale_price', 		NULL );
			update_post_meta( $pid, '_price', 				0	);
		}
		elseif($sprice == 0)
		{
			update_post_meta( $pid, '_regular_price', $rprice );
			update_post_meta( $pid, '_sale_price', 		NULL );
			update_post_meta( $pid, '_price', 				$rprice	);
		}
		else
		{
			update_post_meta( $pid, '_regular_price', $rprice );
			update_post_meta( $pid, '_sale_price', 		$sprice );
			update_post_meta( $pid, '_price', 				$sprice	);
		}
	}

	public function wppbe_update_variable_product()
	{
		/**
			1- Sync Prices with Parent Product
		**/
		/*
			We Have Two Steps:
			1- Update Variations
			2- Sync Parent Product with Variations
		*/
		$product_id = $_POST['parent_id'];

		$variable_products_infos = $_POST['variable_products_infos'];

		// Get Product Infos Json
		$variable_products_infos = json_decode( urldecode(stripslashes($variable_products_infos)) );

		// 1- Update Variations
		foreach($variable_products_infos as $vi)
		{
				// debug
				/*
				every $vi:
				stdClass Object
				(
				    [pid] =>
				    [rprice] =>
				    [sprice] =>
				)
				$vi->pid
				$vi->rprice
				$vi->sprice
				*/
				$this->wppbe_update_variation_price($vi->pid, $vi->rprice, $vi->sprice);
		}

		// 2- Sync Parent Product with Variations
		$product_type = 'variable';
		$product_type_terms = wp_get_object_terms( $product_id, 'product_type' );
		// If the product type hasn't been set or it has changed, update it before saving variations
		if ( empty( $product_type_terms ) || $product_type !== sanitize_title( current( $product_type_terms )->name ) ) {
			wp_set_object_terms( $product_id, $product_type, 'product_type' );
		}

		$s = serialize(get_post_meta( $product_id, '_default_attributes', TRUE ));
		WC_Meta_Box_Product_Data::save_variations( $product_id, get_post( $product_id ) );
		update_post_meta( $product_id, '_default_attributes', $s );

		do_action( 'woocommerce_ajax_save_product_variations', $product_id );
		// Clear cache/transients
		wc_delete_product_transients( $product_id );

		/**
			2- Update Product's Title
		**/
		$post_title = isset($_POST['parent_title']) ? $_POST['parent_title'] : '';

  	wp_update_post( array('ID' => $product_id, 'post_title' => $post_title) );

		wp_die();
	}

	public function wppbe_show_options()
	{
		//all the categories
		$args = array(
			'orderby'    => 'name',
			'hide_empty' => 1,
			'orderby' => 'category'
		);
		return get_terms( 'product_cat', $args );
	}

	public function wppbe_update_options()
	{
		$products_show_limit = (isset($_POST['show_products_page_limit'])) ? $_POST['show_products_page_limit'] : '';

		if($products_show_limit > 0)
			update_option('wppbe_show_products_page_limit', $products_show_limit);

		die();
	}
	/**************
		ACTIONS
	***************/
	public function action_enqueue_styles()
	{

		if(isset($_GET['page']) && $_GET['page'] == 'wppbe')
		{
			$css_file_name = "wppbe-admin.css";
			if(!is_rtl())
			{
				$css_file_name = "wppbe-admin.css";
			}
			else
			{
				$css_file_name = "wppbe-admin-rtl.css";
			}
			wp_enqueue_style(
				'wppbe-admin',
				plugin_dir_url( __FILE__ ) . '../admin/css/' . $css_file_name,
				array(),
				$this->version,
				FALSE
			);

			wp_enqueue_style(
				'wppbe-admin-bootstarp-css',
				plugin_dir_url( __FILE__ ) . '../admin/bootstrap/css/bootstrap.min.css',
				array(),
				$this->version,
				FALSE
			);
		}
	}

	public function action_enqueue_scripts()
	{
		wp_localize_script( 'my-ajax-request', 'MyAjax', array( 'ajaxurl' => admin_url( 'admin-ajax.php' ) ) );

		if(isset($_GET['page']) && $_GET['page'] == 'wppbe')
		{
			//Global Scripts
			wp_enqueue_script(
				'wppbe-admin',
				plugin_dir_url( __FILE__ ) . '../admin/js/wppbe-admin.js',
				array(),
				$this->version,
				FALSE
			);

			$translations = array('remove_all_text' => __('Remove All', 'wppbe'),
														'modify_cats_text' => __('Modify Selected Categories', 'wppbe'),
														'select_cats_to_filter_text' => __('Select A Category to Filter', 'wppbe'),
														'all_cats_text' => __('All Categories', 'wppbe'),
														'alert_1_text' => __('Regular Price can not be empty', 'wppbe'),
														'alert_2_text' => __('Sales Price should be lower than Regular Price. Your change will not Save', 'wppbe'),
														'alert_3_text' => __('Values Are Not Valid!', 'wppbe')
													);
			wp_localize_script('wppbe-admin', 'object', $translations);

			//Boostrap Script
			wp_enqueue_script(
				'wppbe-admin-bootstarp-js',
				plugin_dir_url( __FILE__ ) . '../admin/bootstrap/js/bootstrap.min.js',
				array(),
				$this->version,
				FALSE
			);
		}
	}

	public function action_register_admin_page()
	{
		add_submenu_page(
			'woocommerce',
			__('WC Prices Bulk Edit','wppbe'),
			__('Price Bulk Edit','wppbe'),
			'view_woocommerce_reports',
			'wppbe',
			array($this, 'admin_page_content') );
	}

	/**************
		PARTS
	***************/
	public function admin_page_content()
	{
		//Admin Page Content
		require_once plugin_dir_path( __FILE__ ) . '../admin/parts/admin-page-content.php';
	}

	public function get_version()
	{
		return $this->version;
	}

	// Text Domain
	public function load_text_domain()
	{
		load_plugin_textdomain( 'wppbe', FALSE, plugin_basename( dirname(__DIR__) ) . '/languages/' );
	}
}

<?php
/**
 * @package woocommerce-products-price-bulk-edit
 */
/*
Plugin Name: Woocommerce Products Price Bulk Edit
Plugin URL:
Description: This Plugins Simplifies process of changing woocommerce products in a woocommerce shop.
Version: 2.0
Author: Mostafa Qanbari
Author URI:
Text Domain: wppbe
Domain Path: /languages/
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
*/

if ( !defined('WPINC') )
{
	die;
}

require_once plugin_dir_path( __FILE__ ) . 'includes/class-wppbe.php';

//Is WooCommerce Active?
if ( in_array(	'woocommerce/woocommerce.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) )
{
	//Run The Plugin After Checking For Activation
	$wppbe = new Wppbe();

	wppbe_active_dependencies();
}
else
{

}

function wppbe_options()
{
	add_option( 'wppbe_show_products_page_limit', '500', '', 'yes' );
}
function wppbe_active_dependencies()
{
	register_activation_hook( __FILE__, 'wppbe_options' );
}

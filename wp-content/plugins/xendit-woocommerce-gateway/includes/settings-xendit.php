<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

return apply_filters( 'wc_xendit_settings',
	array(
		'enabled' => array(
			'title'       => __( 'Enable/Disable', 'woocommerce-gateway-xendit' ),
			'label'       => __( 'Enable xendit', 'woocommerce-gateway-xendit' ),
			'type'        => 'checkbox',
			'description' => '',
			'default'     => 'no',
		),
		'title' => array(
			'title'       => __( 'Title', 'woocommerce-gateway-xendit' ),
			'type'        => 'text',
			'description' => __( 'This controls the title which the user sees during checkout.', 'woocommerce-gateway-xendit' ),
			'default'     => __( 'Credit Card (Xendit)', 'woocommerce-gateway-xendit' ),
			'desc_tip'    => true,
		),
		'description' => array(
			'title'       => __( 'Description', 'woocommerce-gateway-xendit' ),
			'type'        => 'text',
			'description' => __( 'This controls the description which the user sees during checkout.', 'woocommerce-gateway-xendit' ),
			'default'     => __( 'Pay with your credit card via xendit.', 'woocommerce-gateway-xendit' ),
			'desc_tip'    => true,
		),
		'testmode' => array(
			'title'       => __( 'Test mode', 'woocommerce-gateway-xendit' ),
			'label'       => __( 'Enable Test Mode', 'woocommerce-gateway-xendit' ),
			'type'        => 'checkbox',
			'description' => __( 'Place the payment gateway in test mode using test API keys.', 'woocommerce-gateway-xendit' ),
			'default'     => 'yes',
			'desc_tip'    => true,
		),
		'test_publishable_key' => array(
			'title'       => __( 'Test Publishable Key', 'woocommerce-gateway-xendit' ),
			'type'        => 'text',
			'description' => __( 'Get your API keys from your xendit account.', 'woocommerce-gateway-xendit' ),
			'default'     => '',
			'desc_tip'    => true,
		),
		'test_secret_key' => array(
			'title'       => __( 'Test Secret Key', 'woocommerce-gateway-xendit' ),
			'type'        => 'text',
			'description' => __( 'Get your API keys from your xendit account.', 'woocommerce-gateway-xendit' ),
			'default'     => '',
			'desc_tip'    => true,
		),
		'publishable_key' => array(
			'title'       => __( 'Live Publishable Key', 'woocommerce-gateway-xendit' ),
			'type'        => 'text',
			'description' => __( 'Get your API keys from your xendit account.', 'woocommerce-gateway-xendit' ),
			'default'     => '',
			'desc_tip'    => true,
		),
		'secret_key' => array(
			'title'       => __( 'Live Secret Key', 'woocommerce-gateway-xendit' ),
			'type'        => 'text',
			'description' => __( 'Get your API keys from your xendit account.', 'woocommerce-gateway-xendit' ),
			'default'     => '',
			'desc_tip'    => true,
		),
		'statement_descriptor' => array(
			'title'       => __( 'Statement Descriptor', 'woocommerce-gateway-xendit' ),
			'type'        => 'text',
			'description' => __( 'Extra information about a charge. This will appear on your customer’s credit card statement.', 'woocommerce-gateway-xendit' ),
			'default'     => '',
			'desc_tip'    => true,
		),
		'capture' => array(
			'title'       => __( 'Capture', 'woocommerce-gateway-xendit' ),
			'label'       => __( 'Capture charge immediately', 'woocommerce-gateway-xendit' ),
			'type'        => 'checkbox',
			'description' => __( 'Whether or not to immediately capture the charge. When unchecked, the charge issues an authorization and will need to be captured later. Uncaptured charges expire in 7 days.', 'woocommerce-gateway-xendit' ),
			'default'     => 'yes',
			'desc_tip'    => true,
		),
		// 'xendit_checkout' => array(
		// 	'title'       => __( 'xendit Checkout', 'woocommerce-gateway-xendit' ),
		// 	'label'       => __( 'Enable xendit Checkout', 'woocommerce-gateway-xendit' ),
		// 	'type'        => 'checkbox',
		// 	'description' => __( 'If enabled, this option shows a "pay" button and modal credit card form on the checkout, instead of credit card fields directly on the page.', 'woocommerce-gateway-xendit' ),
		// 	'default'     => 'no',
		// 	'desc_tip'    => true,
		// ),
		// 'xendit_checkout_locale' => array(
		// 	'title'       => __( 'Xendit Checkout locale', 'woocommerce-gateway-xendit' ),
		// 	'type'        => 'select',
		// 	'class'       => 'wc-enhanced-select',
		// 	'description' => __( 'Language to display in xendit Checkout modal. Specify Auto to display Checkout in the user\'s preferred language, if available. English will be used by default.', 'woocommerce-gateway-xendit' ),
		// 	'default'     => 'en',
		// 	'desc_tip'    => true,
		// 	'options'     => array(
		// 		'auto' => __( 'Auto', 'woocommerce-gateway-xendit' ),
		// 		'zh'   => __( 'Simplified Chinese', 'woocommerce-gateway-xendit' ),
		// 		'en'   => __( 'English', 'woocommerce-gateway-xendit' ),
		// 	),
		// ),
		'xendit_checkout_image' => array(
			'title'       => __( 'xendit Checkout Image', 'woocommerce-gateway-xendit' ),
			'description' => __( 'Optionally enter the URL to a 128x128px image of your brand or product. e.g. <code>https://yoursite.com/wp-content/uploads/2013/09/yourimage.jpg</code>', 'woocommerce-gateway-xendit' ),
			'type'        => 'text',
			'default'     => '',
			'desc_tip'    => true,
		),
		'logging' => array(
			'title'       => __( 'Logging', 'woocommerce-gateway-xendit' ),
			'label'       => __( 'Log debug messages', 'woocommerce-gateway-xendit' ),
			'type'        => 'checkbox',
			'description' => __( 'Save debug messages to the WooCommerce System Status log.', 'woocommerce-gateway-xendit' ),
			'default'     => 'no',
			'desc_tip'    => true,
		),
	)
);

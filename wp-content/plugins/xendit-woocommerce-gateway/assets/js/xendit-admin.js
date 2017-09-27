jQuery( function( $ ) {
	'use strict';

	/**
	 * Object to handle Xendit admin functions.
	 */
	var wc_xendit_admin = {
		isTestMode: function() {
			return $( '#woocommerce_xendit_testmode' ).is( ':checked' );
		},

		getSecretKey: function() {
			if ( wc_xendit_admin.isTestMode() ) {
				return $( '#woocommerce_xendit_test_secret_key' ).val();
			} else {
				return $( '#woocommerce_xendit_secret_key' ).val();
			}
		},

		/**
		 * Initialize.
		 */
		init: function() {
			$( document.body ).on( 'change', '#woocommerce_xendit_testmode', function() {
				var test_secret_key = $( '#woocommerce_xendit_test_secret_key' ).parents( 'tr' ).eq( 0 ),
					test_publishable_key = $( '#woocommerce_xendit_test_publishable_key' ).parents( 'tr' ).eq( 0 ),
					live_secret_key = $( '#woocommerce_xendit_secret_key' ).parents( 'tr' ).eq( 0 ),
					live_publishable_key = $( '#woocommerce_xendit_publishable_key' ).parents( 'tr' ).eq( 0 );

				if ( $( this ).is( ':checked' ) ) {
					test_secret_key.show();
					test_publishable_key.show();
					live_secret_key.hide();
					live_publishable_key.hide();
				} else {
					test_secret_key.hide();
					test_publishable_key.hide();
					live_secret_key.show();
					live_publishable_key.show();
				}
			} );

			$( '#woocommerce_xendit_testmode' ).change();

			// Toggle Stripe Checkout settings.
			$( '#woocommerce_xendit_xendit_checkout' ).change( function() {
				if ( $( this ).is( ':checked' ) ) {
					$( '#woocommerce_xendit_xendit_checkout_locale, #woocommerce_xendit_xendit_bitcoin, #woocommerce_xendit_xendit_checkout_image' ).closest( 'tr' ).show();
					$( '#woocommerce_xendit_request_payment_api' ).closest( 'tr' ).hide();
				} else {
					$( '#woocommerce_xendit_xendit_checkout_locale, #woocommerce_xendit_xendit_bitcoin, #woocommerce_xendit_xendit_checkout_image' ).closest( 'tr' ).hide();
					$( '#woocommerce_xendit_request_payment_api' ).closest( 'tr' ).show();
				}
			}).change();

			// Validate the keys to make sure it is matching test with test field.
			$( '#woocommerce_xendit_secret_key, #woocommerce_xendit_publishable_key' ).on( 'input', function() {
				var value = $( this ).val();

				if ( value.indexOf( '_test_' ) >= 0 ) {
					$( this ).css( 'border-color', 'red' ).after( '<span class="description xendit-error-description" style="color:red; display:block;">' + wc_xendit_admin_params.localized_messages.not_valid_live_key_msg + '</span>' );
				} else {
					$( this ).css( 'border-color', '' );
					$( '.xendit-error-description', $( this ).parent() ).remove();
				}
			}).trigger( 'input' );

			// Validate the keys to make sure it is matching live with live field.
			$( '#woocommerce_xendit_test_secret_key, #woocommerce_xendit_test_publishable_key' ).on( 'input', function() {
				var value = $( this ).val();

				if ( value.indexOf( '_live_' ) >= 0 ) {
					$( this ).css( 'border-color', 'red' ).after( '<span class="description xendit-error-description" style="color:red; display:block;">' + wc_xendit_admin_params.localized_messages.not_valid_test_key_msg + '</span>' );
				} else {
					$( this ).css( 'border-color', '' );
					$( '.xendit-error-description', $( this ).parent() ).remove();
				}
			}).trigger( 'input' );
		}
	};

	wc_xendit_admin.init();
});

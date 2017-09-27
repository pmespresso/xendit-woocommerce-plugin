/* global wc_xendit_params */
Xendit.setPublishableKey( wc_xendit_params.key );
console.log('PUBLISHABLE KEY => ', Xendit._getPublishableKey());
jQuery( function( $ ) {
	'use strict';

	/* Open and close for legacy class */
	$( 'form.checkout, form#order_review' ).on( 'change', 'input[name="wc-xendit-payment-token"]', function() {
		if ( 'new' === $( '.xendit-legacy-payment-fields input[name="wc-xendit-payment-token"]:checked' ).val() ) {
			$( '.xendit-legacy-payment-fields #xendit-payment-data' ).slideDown( 200 );
		} else {
			$( '.xendit-legacy-payment-fields #xendit-payment-data' ).slideUp( 200 );
		}
	} );

	/**
	 * Object to handle Xendit payment forms.
	 */
	var wc_xendit_form = {

		/**
		 * Initialize event handlers and UI state.
		 */
		init: function() {
			// checkout page
			if ( $( 'form.woocommerce-checkout' ).length ) {
				this.form = $( 'form.woocommerce-checkout' );
			}

			$( 'form.woocommerce-checkout' )
				.on(
					'checkout_place_order_xendit',
					this.onSubmit
				);
			//
			// // add payment method page
			// if ( $( 'form#add_payment_method' ).length ) {
			// 	this.form = $( 'form#add_payment_method' );
			// }
			//
			// $( 'form#add_payment_method' )
			// 	.on(
			// 		'submit',
			// 		this.onSubmit
			// 	);

			$( document )
				.on(
					'change',
					'#wc-xendit-cc-form :input',
					this.onCCFormChange
				)
				.on(
					'xenditError',
					this.onError
				)
				.on(
					'checkout_error',
					this.clearToken
				);
		},

		isXenditChosen: function() {
			return $( '#payment_method_xendit' ).is( ':checked' ) && ( ! $( 'input[name="wc-xendit-payment-token"]:checked' ).length || 'new' === $( 'input[name="wc-xendit-payment-token"]:checked' ).val() );
		},

		hasToken: function() {
			return 0 < $( 'input.xendit_token' ).length;
		},

		block: function() {
			wc_xendit_form.form.block({
				message: null,
				overlayCSS: {
					background: '#fff',
					opacity: 0.6
				}
			});
		},

		unblock: function() {
			wc_xendit_form.form.unblock();
		},

		onError: function( e, responseObject ) {
			console.log('ON ERROR');
			var message = responseObject.response.error.message;

			// Customers do not need to know the specifics of the below type of errors
			// therefore return a generic localizable error message.
			if (
				'invalid_request_error' === responseObject.response.error.type ||
				'api_connection_error'  === responseObject.response.error.type ||
				'api_error'             === responseObject.response.error.type ||
				'authentication_error'  === responseObject.response.error.type ||
				'rate_limit_error'      === responseObject.response.error.type
			) {
				message = wc_xendit_params.invalid_request_error;
			}

			if ( 'card_error' === responseObject.response.error.type && wc_xendit_params.hasOwnProperty( responseObject.response.error.code ) ) {
				message = wc_xendit_params[ responseObject.response.error.code ];
			}

			$( '.wc-xendit-error, .xendit_token' ).remove();
			$( '#xendit-card-number' ).closest( 'p' ).before( '<ul class="woocommerce_error woocommerce-error wc-xendit-error"><li>' + message + '</li></ul>' );
			wc_xendit_form.unblock();
		},

		onSubmit: function( e ) {
			console.log('ON SUBMIT BITCH');
			if ( wc_xendit_form.isXenditChosen() && ! wc_xendit_form.hasToken() ) {
				e.preventDefault();
				wc_xendit_form.block();

				var card       = $( '#xendit-card-number' ).val().replace(/\s/g, ''),
					cvn        = $( '#xendit-card-cvc' ).val(),
					expires    = $( '#xendit-card-expiry' ).payment( 'cardExpiryVal' ),
					first_name = $( '#billing_first_name' ).length ? $( '#billing_first_name' ).val() : wc_xendit_params.billing_first_name,
					last_name  = $( '#billing_last_name' ).length ? $( '#billing_last_name' ).val() : wc_xendit_params.billing_last_name,
					data       = {
						"amount"   : total, //defined global variable in func get_xendit_amount
						"card_number"   : card,
						"card_exp_month": String(expires.month).length === 1 ? '0' + String(expires.month) : String(expires.month),
						"card_exp_year" : String(expires.year),
						"card_cvn"      : cvn,
						"is_multiple_use": true
					};

				console.log('data => ', data);

				Xendit.card.createToken( data, wc_xendit_form.onXenditResponse );
				// Prevent form submitting
				return false;
			}
		},

		onCCFormChange: function() {
			$( '.wc-xendit-error, .xendit_token' ).remove();
		},

		// Xendit tokenization response
		onXenditResponse: function( err, response ) {

			if ( err ) {
				console.log("error => ", err);
				$( document ).trigger( 'xenditError', { err: err } );
			} else {
				console.log("response =>", response);

				if ( 'no' === wc_xendit_params.allow_prepaid_card && 'prepaid' === response.card.funding ) {
					err = { message: wc_xendit_params.no_prepaid_card_msg };
					console.log('if block => ', err);
					$( document ).trigger( 'xenditError', { err: err } );

					return false;
				}

				// token contains id, last4, and card type
				var token = response.id;
				var status = response.status; //hopefully VERIFIED

				// insert the token into the form so it gets submitted to the server
				wc_xendit_form.form.append( "<input type='hidden' class='xendit_token' name='xendit_token' value='" + token + "'/>" );
				wc_xendit_form.form.submit();

				console.log(wc_xendit_form.form);

			}
		},

		clearToken: function() {
			$( '.xendit_token' ).remove();
		}
	};

	wc_xendit_form.init();
} );

/* global wc_xendit_params */
Xendit.setPublishableKey( wc_xendit_params.key );

jQuery( function( $ ) {
	'use strict';

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

			// pay order page
			if ( $( 'form#order_review' ).length ) {
				this.form = $( 'form#order_review' );
			}

			$( 'form#order_review' )
				.on(
					'submit',
					this.onSubmit
				);

			// add payment method page
			if ( $( 'form#add_payment_method' ).length ) {
				this.form = $( 'form#add_payment_method' );
			}

			$( 'form#add_payment_method' )
				.on(
					'submit',
					this.onSubmit
				);

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

			if ( wc_xendit_form.isXenditChosen() && ! wc_xendit_form.hasToken()) {
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

				wc_xendit_form.form.append( "<input type='hidden' class='year' name='year' value='" + data.card_exp_year + "'/>" );
				wc_xendit_form.form.append( "<input type='hidden' class='month' name='month' value='" + data.card_exp_month + "'/>" );


				Xendit.card.createToken( data, wc_xendit_form.createAuthentication );
				// Prevent form submitting
				return false;
			}
		},

		onCCFormChange: function() {
			$( '.wc-xendit-error, .xendit_token', '.xendit_authentication').remove();
		},

		createAuthentication: function(err, response) {
			var token_id = response.id;

			var data = {
				"amount": total,
				"token_id": token_id
			}

			wc_xendit_form.form.append( "<input type='hidden' class='xendit_token' name='xendit_token' value='" + token_id + "'/>" );
			Xendit.card.createAuthentication( data, wc_xendit_form.onAuthenticationResponse );
		},

		onAuthenticationResponse: function( err, response ) {
			if (err) {
					$( document ).trigger( 'xenditError', { err: err } );
			}
			// token contains id, last4, and card type
			var authentication_id = response.id;

			// insert the token into the form so it gets submitted to the server
			wc_xendit_form.form.append( "<input type='hidden' class='xendit_authentication' name='xendit_authentication' value='" + authentication_id + "'/>" );
			wc_xendit_form.form.submit();
		},

		clearToken: function() {
			$( '.xendit_token' ).remove();
			$( '.xendit_authentication' ).remove();
		}
	};

	wc_xendit_form.init();
} );

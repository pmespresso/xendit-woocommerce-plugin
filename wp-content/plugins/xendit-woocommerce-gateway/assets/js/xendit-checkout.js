jQuery( function( $ ) {
	'use strict';

	/**
	 * Object to handle Xendit payment forms.
	 */
	var wc_xendit_form = {

		/**
		 * Initialize e handlers and UI state.
		 */
		init: function( form ) {
			this.form          = form;
			this.xendit_submit = false;

			$( this.form )
				// We need to bind directly to the click (and not checkout_place_order_xendit) to avoid popup blockers
				// especially on mobile devices (like on Chrome for iOS) from blocking XenditCheckout.open from opening a tab
				.on( 'click', '#place_order', this.onSubmit )

				// WooCommerce lets us return a false on checkout_place_order_{gateway} to keep the form from submitting
				.on( 'submit checkout_place_order_xendit' );

			$( document.body ).on( 'checkout_error', this.resetModal );
		},

		isXenditChosen: function() {
			return $( '#payment_method_xendit' ).is( ':checked' ) && ( ! $( 'input[name="wc-xendit-payment-token"]:checked' ).length || 'new' === $( 'input[name="wc-xendit-payment-token"]:checked' ).val() );
		},

		isXenditModalNeeded: function( e ) {
			var token = wc_xendit_form.form.find( 'input.xendit_token' ),
				$required_inputs;

			// If this is a xendit submission (after modal) and token exists, allow submit.
			if ( wc_xendit_form.xendit_submit && token ) {
				return false;
			}

			// Don't affect submission if modal is not needed.
			if ( ! wc_xendit_form.isXenditChosen() ) {
				return false;
			}

			// Don't open modal if required fields are not complete
			if ( $( 'input#terms' ).length === 1 && $( 'input#terms:checked' ).length === 0 ) {
				return false;
			}

			if ( $( '#createaccount' ).is( ':checked' ) && $( '#account_password' ).length && $( '#account_password' ).val() === '' ) {
				return false;
			}

			// check to see if we need to validate shipping address
			if ( $( '#ship-to-different-address-checkbox' ).is( ':checked' ) ) {
				$required_inputs = $( '.woocommerce-billing-fields .validate-required, .woocommerce-shipping-fields .validate-required' );
			} else {
				$required_inputs = $( '.woocommerce-billing-fields .validate-required' );
			}

			if ( $required_inputs.length ) {
				var required_error = false;

				$required_inputs.each( function() {
					if ( $( this ).find( 'input.input-text, select' ).not( $( '#account_password, #account_username' ) ).val() === '' ) {
						required_error = true;
					}

					var emailField = $( this ).find( '#billing_email' );

					if ( emailField.length ) {
						var re = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

						if ( ! re.test( emailField.val() ) ) {
							required_error = true;
						}
					}
				});

				if ( required_error ) {
					return false;
				}
			}

			return true;
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

		onClose: function() {
			wc_xendit_form.unblock();
		},

		onSubmit: function( e ) {
			if ( wc_xendit_form.isXenditModalNeeded() ) {
				e.preventDefault();

				// Capture submittal and open xenditcheckout
				var $form = wc_xendit_form.form,
					$data = $( '#xendit-payment-data' ),
					token = $form.find( 'input.xendit_token' );

				token.val( '' );

				var token_action = function( res ) {
					$form.find( 'input.xendit_token' ).remove();
					$form.append( '<input type="hidden" class="xendit_token" name="xendit_token" value="' + res.id + '"/>' );
					wc_xendit_form.xendit_submit = true;
					$form.submit();
				};

				XenditCheckout.open({
					key               : wc_xendit_params.key,
					billingAddress    : 'yes' === wc_xendit_params.xendit_checkout_require_billing_address,
					amount            : $data.data( 'amount' ),
					name              : $data.data( 'name' ),
					description       : $data.data( 'description' ),
					currency          : $data.data( 'currency' ),
					image             : $data.data( 'image' ),
					bitcoin           : $data.data( 'bitcoin' ),
					locale            : $data.data( 'locale' ),
					email             : $( '#billing_email' ).val() || $data.data( 'email' ),
					panelLabel        : $data.data( 'panel-label' ),
					allowRememberMe   : $data.data( 'allow-remember-me' ),
					token             : token_action,
					closed            : wc_xendit_form.onClose()
				});

				return false;
			}

			return true;
		},

		resetModal: function() {
			wc_xendit_form.form.find( 'input.xendit_token' ).remove();
			wc_xendit_form.xendit_submit = false;
		}
	};

	wc_xendit_form.init( $( "form.checkout, form#order_review, form#add_payment_method" ) );
} );

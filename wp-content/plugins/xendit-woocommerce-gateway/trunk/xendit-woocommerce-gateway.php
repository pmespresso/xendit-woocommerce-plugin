<?php
if ( ! defined( 'ABSPATH' ) ) exit;
/*
Plugin Name: Xendit Woocommerce Gateway
Plugin URI: #
Description: Accept payments in Indonesia with Xendit. Seamlessly integrated into WooCommerce.
Version: 1.0
Author: Xendit
Author URI: #
*/

add_action('plugins_loaded', 'woocommerce_xendit_init');
function woocommerce_xendit_init(){
  if(!class_exists('WC_Payment_Gateway')){
    return;
  }

  require_once(dirname(__file__) . '/libs/XenditPHPClient.php');

  class woocommerce_xendit_gateway extends WC_Payment_Gateway{
    public function __construct(){
      global $woocommerce;

      $this->id = 'xendit_gateway';
      $this->has_fields = true;
			$this->method_title = 'Xendit';
			$this->method_description = 'Collect payment from Xendit.';

      if ( ! $this->is_valid_for_use() ) {
        $this->enabled = 'no';
        return;
      }

      $this->init_form_fields();
      $this->init_settings();

      // user setting variables
      $this->title			= $this->get_option('title');
      $this->description 		= $this->get_option('description');

      $this->developmentmode	= $this->get_option('developmentmode');
      $this->showlogo			= $this->get_option('showlogo');

      $this->sucess_responce_xendit	= $this->get_option('sucess_responce_xendit');
      $this->sucess_payment_xendit	= $this->get_option('sucess_payment_xendit');
      $this->responce_url_sucess		= $this->get_option('responce_url_calback');
      $this->checkout_msg				= $this->get_option('checkout_msg');

      $this->xendit_status	= $this->developmentmode == 'yes' ? "[Development]" : "[Production]";

      $this->msg['message'] 	= "";
      $this->msg['class'] 	= "";

      $this->amount_to_live	= $this->get_option('amount_to_live');
      // $this->xendit_fees		= $this->get_option('xendit_fees');

      $this->api_server_live	= 'https://api.xendit.co';
      $this->api_server_test	= 'https://api.xendit.co';

      $this->merchant_name	= $this->get_option('merchant_name');
      $this->api_key		= $this->developmentmode == 'yes' ? $this->get_option('api_key_dev') : $this->get_option('api_key');
      $this->secret_key 	= $this->developmentmode == 'yes' ? $this->get_option('secret_key_dev') : $this->get_option('secret_key');
      $this->callback_token 	= $this->developmentmode == 'yes' ? $this->get_option('callback_token_dev') : $this->get_option('callback_token');

      $options['secret_api_key']	= $this->secret_key;//base64_encode($this->secret_key.':');
      $options['server_domain']	= $this->serverurl($this->developmentmode);

      $this->xenditClass = new XenditPHPClient($options);

      if($this->showlogo == 'yes'){
        $this->icon = plugins_url( 'xendit.png', __FILE__ );
      }

      add_action( 'woocommerce_update_options_payment_gateways_' . $this->id, array($this, 'process_admin_options') );
      add_action( 'woocommerce_receipt_' . $this->id, array(&$this, 'receipt_page') );
      add_action( 'woocommerce_order_details_after_order_table', array(&$this, 'xendit_checkout_details') );
      add_action( 'woocommerce_checkout_update_order_meta', array(&$this, 'confirmation_email') );
      add_action( 'wp_enqueue_scripts', array(&$this, 'load_xendit_script') );

      add_filter( 'woocommerce_available_payment_gateways', array(&$this, 'xendit_status_payment_gateways') );
      add_filter( 'woocommerce_payment_complete_order_status', array(&$this, 'update_status_complete') );

      require_once( dirname( __FILE__ ) . '/includes/class-wc-gateway-xendit-addons.php' );
    }

    public function is_valid_for_use() {
      return in_array( get_woocommerce_currency(), apply_filters( 'woocommerce_'.$this->id.'_supported_currencies', array( 'IDR' ) ) );
    }

    public function load_xendit_script() {
      wp_enqueue_script( 'xendit-gateway', plugins_url( 'assets/xendit.app.js', __FILE__ ), array('wc-checkout'), false, true );
    }

    //load gateway setting options
    public function admin_options() {
      if ( !$this->is_valid_for_use() ) {
        ?>
        <div class="inline error"><p><strong><?php _e( 'Gateway Disabled', 'woocommerce' ); ?></strong>: <?php _e( $this->method_title.' does not support your store currency.', 'woocommerce' ); ?></p></div>
        <?php
        return;
      }

      $bal = $this->xenditClass->getBalance();
      $balance = isset($bal['error_code']) ? $bal['error_code'].' : '.$bal['message'] : 'RP. '.$bal['balance'];
      ?>
      <h3><?php _e('Xendit payment gateway options', 'xendit'); ?></h3>
      <table class="form-table">
        <?php $this->generate_settings_html(); ?>
        <tr valign="top">
          <th scope="row" class="titledesc"><?php _e('Current Balance', 'xendit'); ?></th>
          <td class="forminp"><?=$balance;?></td>
        </tr>
        <tr valign="top">
          <th scope="row" class="titledesc"><?php _e('Xendit Credentials', 'xendit'); ?></th>
          <td class="forminp"><a target="_blank" href="https://dashboard.xendit.co/dashboard/settings/developer">https://dashboard.xendit.co/dashboard/settings/developer</a></td>
        </tr>
      </table>

      <script>
        jQuery(document).ready(function($){
          <?php if($this->developmentmode == 'yes') { ?>
            $('.xendit_dev').parents('tr').show();
            $('.xendit_live').parents('tr').hide();
          <?php } else { ?>
            $('.xendit_dev').parents('tr').hide();
            $('.xendit_live').parents('tr').show();
          <?php } ?>

          $("#woocommerce_<?=$this->id;?>_developmentmode").change(function() {
            if(this.checked){
              $('.xendit_dev').parents('tr').show();
              $('.xendit_live').parents('tr').hide();
            }
            else{
              $('.xendit_dev').parents('tr').hide();
              $('.xendit_live').parents('tr').show();
            }
          });

          $("#woocommerce_<?=$this->id;?>_default_responce_url_calback").change(function() {
            if(this.checked){
              $("#woocommerce_<?=$this->id;?>_responce_url_calback").val("");
              $("#woocommerce_<?=$this->id;?>_responce_url_calback").val("https://woocommerce.xendit.co/?xendit_mode=xendit_callback");
            }
          });
          $("#woocommerce_<?=$this->id;?>_responce_url_calback").change(function() {
            if(this.value == "https://woocommerce.xendit.co/?xendit_mode=xendit_callback") {
              $("#woocommerce_<?=$this->id;?>_default_responce_url_calback").attr("checked","checked");
            } else {
              $("#woocommerce_<?=$this->id;?>_default_responce_url_calback").removeAttr("checked");
            }
          });
        });
      </script>

      <?php
    }

    //woocommerce user setting fields
    function init_form_fields() {
      $url = str_replace( 'https:', 'http:', add_query_arg( 'wc-api', 'woocommerce_<?=$this->id;?>', home_url( '/' ) ) );

      $this->form_fields = array(
        'enabled' => array(
          'title' => __('Enable/Disable', 'xendit'),
          'type' => 'checkbox',
          'label' => __('Enable Xendit Gateway.', 'xendit'),
          'default' => 'no'
        ),

        'title' => array(
          'title' => __('Title :', 'xendit'),
          'type'=> 'text',
          'description' => __('This controls the title which the user sees during checkout.', 'xendit'),
          'default' => __('Xendit ', 'xendit')
        ),

        'description' => array(
          'title' => __('Description :', 'xendit'),
          'type'=> 'textarea',
          'description' => __('This controls the description which the user sees during checkout.', 'xendit'),
          'default' => __('Pay with Xendit', 'xendit')
        ),

        'merchant_name' => array(
          'title' => __('Xendit Merchat name :', 'xendit'),
          'type'=> 'text',
          'description' => __('Your Merchat name.', 'xendit'),
          'default' => __('', 'xendit')
        ),

        'developmentmode' => array(
          'title' => __('Test environment', 'xendit'),
          'type' => 'checkbox',
          'label' => __('Enable Xendit test environment (Please untick for Live transaction)', 'xendit'),
          'default' => 'no'
        ),

        'api_key' => array(
          'style' => '',
          'class' => 'xendit_live',
          'title' => __('Xendit Public API key :', 'xendit'),
          'type'=> 'text',
          'description' => __('Unique Live API key given by xendit. <strong>Case Sensitive!</strong>', 'xendit'),
          'default' => __('', 'xendit')
        ),

        'secret_key' => array(
          'style' => '',
          'class' => 'xendit_live',
          'title' => __('Xendit Secret key :', 'xendit'),
          'type'=> 'text',
          'description' => __('Unique Live Secret key given by xendit. <strong>Case Sensitive!</strong>', 'xendit'),
          'default' => __('', 'xendit')
        ),

        'callback_token' => array(
          'style' => '',
          'class' => 'xendit_live',
          'title' => __('Xendit Validation token :', 'xendit'),
          'type'=> 'text',
          'description' => __('Unique Live Validation token given by xendit. <strong>Case Sensitive!</strong>', 'xendit'),
          'default' => __('', 'xendit')
        ),

        'api_key_dev' => array(
          'style' => '',
          'class' => 'xendit_dev',
          'title' => __('Xendit Public API key [DEV] :', 'xendit'),
          'type'=> 'text',
          'description' => __('Unique Development API key given by xendit. <strong>Case Sensitive!</strong>', 'xendit'),
          'default' => __('', 'xendit')
        ),

        'secret_key_dev' => array(
          'style' => '',
          'class' => 'xendit_dev',
          'title' => __('Xendit Secret key [DEV] :', 'xendit'),
          'type'=> 'text',
          'description' => __('Unique Development Secret key given by xendit. <strong>Case Sensitive!</strong>', 'xendit'),
          'default' => __('', 'xendit')
        ),

        'callback_token_dev' => array(
          'style' => '',
          'class' => 'xendit_dev',
          'title' => __('Xendit Validation token [DEV] :', 'xendit'),
          'type'=> 'text',
          'description' => __('Unique Development Validation token given by xendit. <strong>Case Sensitive!</strong>', 'xendit'),
          'default' => __('', 'xendit')
        ),

        'default_responce_url_calback' => array(
          'title' => __('Default Response URL Callback :', 'xendit'),
          'type'=> 'checkbox',
          'label' => __('Use default response url callback', 'xendit'),
          'description' => __('Set default response callback url'),
          'default' => 'no'
        ),

        'responce_url_calback' => array(
          'title' => __('Callback URL :', 'xendit'),
          'type'=> 'text',
          'description' => __('After client pay the invoice will call this page.'),
          'default' => home_url().'/?xendit_mode=xendit_callback'
          //https://woocommerce.xendit.co/?xendit_mode=xendit_callback
        ),

        'amount_to_live' => array(
          'title' => __('Min. Amount:', 'xendit'),
          'type'=> 'number',
          'description' => __('Minimum amount to show Xendit gateway, if cart value less then it Xendit will be hidden.', 'xendit'),
          'default' => __('10000', 'xendit')
        ),

        // 'xendit_fees' => array(
        //   'title' => __('Apply Fees :', 'xendit'),
        //   'type' => 'number',
        //   'min' => '1',
        //   'description' => __('Xendit fees in % (number only), will apply when user select Xendit as payment gateway.', 'xendit'),
        //   'default' => __('10', 'xendit')
        // ),

        'sucess_responce_xendit' => array(
          'title' => __('Success responce xendit :', 'xendit'),
          'type'=> 'select',
          'description' => __('COMPLETED - Transaction Passed, or PENDING - Transaction is pending.', 'xendit'),
          'default' => 'COMPLETED',
          'class' => 'form-control',
          'options' => array(
            'COMPLETED' => __('COMPLETED - Transaction Passed', 'xendit'),
            'PENDING' => __('PENDING - Transaction is pending', 'xendit'),
          )
        ),

        'sucess_payment_xendit' => array(
          'title' => __('Default order status :', 'xendit'),
          'type'=> 'select',
          'description' => __('Set default status of order when payment is received (COMPLETED).', 'xendit'),
          'default' => 'processing',
          'class' => 'form-control',
          'options' => array(
            'pending' => __('Pending payment', 'xendit'),
            'processing' => __('Processing', 'xendit'),
            'completed' => __('Completed', 'xendit'),
            'on-hold' => __('On Hold', 'xendit'),
          )
        ),

        'checkout_msg' => array(
          'title' => __('Checkout Message :', 'xendit'),
          'type'=> 'textarea',
          'description' => __('Message display when checkout'),
          'default' => __('Thank you for your order, please click the button below to pay with the secured Xendit.', 'xendit')
        ),

        'showlogo' => array(
          'title' => __('Xendit icon', 'xendit'),
          'type' => 'checkbox',
          'label' => __('Show Xendit icon on checkout page', 'xendit'),
          'default' => 'yes'
        ),

      );

    }

    public function serverurl( $mode ) {
      if($mode == 'yes'){
        //Test url
        return $this->api_server_test;
      }else {
        //Live url
        return $this->api_server_live;
      }
    }

    public function payment_fields() {
      global $woocommerce;
      if(!empty($this->description)){
        echo wpautop(wptexturize($this->description));
      }
    }

    public function confirmation_email($order_id) {

      global $wpdb, $woocommerce;
      $order  = new WC_Order($order_id);
      $mailer = $woocommerce->mailer();

      $mail_body  = '';

      $productinfo    = "Payment for Order #{$order_id} at ".get_option('blogname');
      $amount			= $order->order_total;
      $payer_email	= $order->billing_email;
      $order_number	= "orderid_".$order->id;

      $payment_gateway = wc_get_payment_gateway_by_order( $order->id );
      if($payment_gateway->id != $this->id) return;

      $invoice = get_post_meta( $order->id, 'Xendit_invoice', true );
      $invoice_exp = get_post_meta( $order->id, 'Xendit_expiry', true );

      if($invoice && $invoice_exp > time())
        $response = $this->xenditClass->getInvoice($invoice);
      else
        $response = $this->xenditClass->createInvoice($order_number, $amount, $payer_email, $productinfo);

      $this->add_log("{$this->xendit_status} Order Created: Xendit sent response..", true);
      if($this->developmentmode == 'yes')
        $this->add_log(json_encode($response, JSON_PRETTY_PRINT), true);

      if(isset($response['error_code'])){

        update_post_meta( $order_id, 'Xendit_error', esc_attr($response['message']));
        $this->add_log("{$this->xendit_status} Order Created: Xendit was sent error response..", false);
        if($this->developmentmode == 'yes')
        $this->add_log(json_encode($response, JSON_PRETTY_PRINT), false);
        return;

      }

      if($response['status'] == 'PAID' || $response['status'] == 'COMPLETED'){
        $this->add_log("{$this->xendit_status} Order Created: Order #{$order->id} is coplete no future action required.", false);
        return;
      }

      update_post_meta( $order_id, 'Xendit_invoice', esc_attr($response['id']));
      update_post_meta( $order_id, 'Xendit_expiry', esc_attr(strtotime($response['expiry_date'])));

      $banks = array();
      foreach($response['available_banks'] as $available_banks){
        //if( $available_banks['bank_branch'] == 'Virtual Account') continue;
        $banks[] = $available_banks;
      }

      $open_banks = count($banks);

      $mail_body .= '
        <table class="shop_table order_details">
          <tbody>
          <tr>
            <td colspan="2">
              <div style="text-align:left;">
                '.sprintf( __('Your order #%s has been created and waiting for payment', 'xendit'), $order->get_order_number()).'<br />
                <strong>'.sprintf( __('Please pay your invoice to %s this Bank Account:', 'xendit'), $open_banks > 1 ? 'one of' : '').'</strong>
              </div>
            </td>
          </tr>
      ';

      foreach ($banks as $bank) {
        $mail_body .= '
          <tr>
            <td width="50%">
              <div style="text-align:left;">
                <img src="'.plugins_url( 'assets/'.strtolower($bank['bank_code']).'.png', __FILE__ ).'" style="max-width:180px;width:100%;" class="img-responsive">
              </div>
              <div style="text-align:left;">
                '.sprintf( __('Bank Name: <strong>%s</strong>', 'xendit'), $bank['bank_code']).'<br />
                '.sprintf( __('Account Number: <strong>%s</strong>', 'xendit'), $bank['bank_account_number']).'<br />
                '.sprintf( __('Account Holder: <strong>%s</strong>', 'xendit'), $bank['account_holder_name']).'<br />
                '.sprintf( __('Bank Branch: <strong>%s</strong>', 'xendit'), $bank['bank_branch']).'<br />
                '.sprintf( __('Unique Amount: <strong>%s</strong>', 'xendit'), wc_price($bank['transfer_amount'])).'<br />
              </div>
            </td>
          </tr>
        ';
      }

      $mail_body .= '
        <tr>
          <td colspan="2">
            <div style="text-align:left;">
              <strong>'.sprintf( __('NOTE: Please pay this before %s', 'xendit'), date("Y-m-d H:i:s", strtotime($response['expiry_date']))).'</strong>
            </div>
            <div style="text-align:left;">
              <strong><a class="button cancel" href="'.$order->get_view_order_url().'">'.__('View my order', 'xendit').'</a></strong>
            </div>
          </td>
        </tr>
        </tbody>
        </table>
      ';

      $message = $mailer->wrap_message( __('Order confirmation', 'xendit'), $mail_body );
      return $mailer->send( $order->billing_email, sprintf( __('Order #%s has been created', 'xendit'), $order->get_order_number() ), $message );
    }

	public function receipt_page( $order_id ) {
      global $wpdb, $woocommerce;

      $order          = new WC_Order($order_id);
      $curr_symbole 	= get_woocommerce_currency();

      $payment_gateway = wc_get_payment_gateway_by_order( $order->id );
      if($payment_gateway->id != $this->id) return;

      $invoice = get_post_meta( $order->id, 'Xendit_invoice', true );
      $invoice_exp = get_post_meta( $order->id, 'Xendit_expiry', true );

      $data = $this->xenditClass->getInvoice($invoice);

      if($data['status'] == 'PAID' || $data['status'] == 'COMPLETED'){
        $billing_name = implode(" ", array($order->billing_first_name, $order->billing_last_name));
        return '
          <p><strong>'.sprintf(__('Hello %s, Your payment is complete.<br />Thank you for your shopping!', 'xendit'), $billing_name).'</strong></p>
          <p><a class="button paid" href="'.$order->get_view_order_url().'">'.__('Check order now!', 'xendit').'<a></p>
        ';
      }

      if(isset($data['error_code']) || (NULL == $invoice && $invoice_exp < time())){
        $message = sprintf(__('Ouwh Oh, Payment gateway Error!\nError: %s', 'xendit'), get_post_meta( $order->id, 'Xendit_error', true ));
        $this->add_log($this->xendit_status .' '.$message, true);
        echo '
          <script>
            window.onload = function() {
              alert("'.$message.'")
              window.location = "'.$order->get_cancel_order_url().'";
            }
          </script>
        ';
        //wp_redirect($order->get_cancel_order_url(), 200);
        die();
      }

      $response = $data;//json_encode($data);
      $form_args = array(
        'invoice' => $response['id'],
        'merchant_name' => $response['merchant_name'],
        'amount' => $response['amount'],
        'taxable_amount' => $response['taxable_amount'],
        'billable_amount' => $response['billable_amount'],
      );

      $return  = "";
      $return .= '<div style="text-align:left;"><strong>'.$this->checkout_msg.'</strong><br /><br /></div>';

      $banks = array();
      foreach($response['available_banks'] as $available_banks){
        //if( $available_banks['bank_branch'] == 'Virtual Account') continue;
        $banks[] = $available_banks;
      }

      $open_banks = count($banks);

      $return .= '
          <table class="shop_table order_details">
            <tbody>
            <tr><td colspan="2"><iframe width="100%" height="1000" src="'.$response['invoice_url'].'" frameborder="0" allowfullscreen></iframe></td></tr>
        ';

        // $i = 0;
        // foreach ($banks as $bank) {
        //   if($i % 2 == 0 ) {
        //     $return .= '
        //       <tr>
        //     ';
        //     $return .= '
        //       <td width="50%">
        //         <div style="text-align:left; padding:10px;">
        //           <img src="'.plugins_url( 'assets/'.strtolower($bank['bank_code']).'.png', __FILE__ ).'" style="max-width:180px;width:100%;" class="img-responsive">
        //         </div>
        //         <div style="text-align:left; padding:10px;">
        //           '.sprintf( __('Bank Name: <strong>%s</strong>', 'xendit'), $bank['bank_code']).'<br />
        //           '.sprintf( __('Account Number: <strong>%s</strong>', 'xendit'), $bank['bank_account_number']).'<br />
        //           '.sprintf( __('Account Holder: <strong>%s</strong>', 'xendit'), $bank['account_holder_name']).'<br />
        //           '.sprintf( __('Bank Branch: <strong>%s</strong>', 'xendit'), $bank['bank_branch']).'<br />
        //           '.sprintf( __('Unique Amount: <strong>%s</strong>', 'xendit'), wc_price($bank['transfer_amount'])).'<br />
        //         </div>
        //       </td>
        //     ';
        //   }
        //   else {
        //     $return .= '
        //       <td width="50%">
        //         <div style="text-align:left; padding:10px;">
        //           <img src="'.plugins_url( 'assets/'.strtolower($bank['bank_code']).'.png', __FILE__ ).'" style="max-width:180px;width:100%;" class="img-responsive">
        //         </div>
        //         <div style="text-align:left; padding:10px;">
        //           '.sprintf( __('Bank Name: <strong>%s</strong>', 'xendit'), $bank['bank_code']).'<br />
        //           '.sprintf( __('Account Number: <strong>%s</strong>', 'xendit'), $bank['bank_account_number']).'<br />
        //           '.sprintf( __('Account Holder: <strong>%s</strong>', 'xendit'), $bank['account_holder_name']).'<br />
        //           '.sprintf( __('Bank Branch: <strong>%s</strong>', 'xendit'), $bank['bank_branch']).'<br />
        //           '.sprintf( __('Unique Amount: <strong>%s</strong>', 'xendit'), wc_price($bank['transfer_amount'])).'<br />
        //         </div>
        //       </td>
        //       ';
        //     $return .= '
        //       </tr>
        //     ';
        //   }
        //   $i++;
        // }

      $return .= '
            <tr>
              <td colspan="2">
                <div style="text-align:left;">
                  <strong><a class="button cancel" href="'.$order->get_cancel_order_url().'">'.__('Cancel order &amp; restore cart', 'xendit').'</a></strong>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      ';

      /*
      $form_args_array = array();
      foreach($form_args as $key => $value){
      $form_args_array[] = "<input type='hidden' name='{$key}' value='{$value}'/>\n";
      }

      $return .= '
      <p>Tax & Fees <b>'.$curr_symbole.' '.number_format(($response['taxable_amount'])).'</b></p>
      <p>Total amount will be <b>'.$curr_symbole.' '.number_format(($response['billable_amount'])).'</b></p>
      <form action="'.$response['invoice_url'].'" method="get">
      ' . implode('', $form_args_array) . '
      <input type="submit" class="button-alt" id="submit_payment_form" value="'.__('Pay with Xendit', 'xendit').'" />
      <a class="button cancel" href="'.$order->get_cancel_order_url().'">'.__('Cancel order &amp; restore cart', 'xendit').'</a>
      </form>
      ';*/

      echo $return;
    }


		public function xendit_checkout_details( $order_id ) {
			global $wpdb;

			$order = new WC_Order( $order_id );

			$payment_gateway = wc_get_payment_gateway_by_order( $order->id );
			if($payment_gateway->id != $this->id) return;

			$invoice = get_post_meta( $order->id, 'Xendit_invoice', true );
			$invoice_exp = get_post_meta( $order->id, 'Xendit_expiry', true );

			if($invoice && $invoice_exp > time()){

				$response = $this->xenditClass->getInvoice($invoice);

				if($response['status'] == 'PAID' || $response['status'] == 'COMPLETED'){
					$billing_name = implode(" ", array($order->billing_first_name, $order->billing_last_name));
					return '

						<p><strong>'.sprintf(__('Hello %s, Your payment is complete.<br />Thank you for your shopping!', 'xendit'), $billing_name).'</strong></p>
						<p><a class="button paid" href="'.$order->get_view_order_url().'">'.__('Check order now!', 'xendit').'<a></p>
						';
				}

				if($order->status == 'pending' || $order->status == 'on-hold'):

	//				$response = $this->xenditClass->getInvoice($invoice);
					if(isset($response['error_code'])) return;

					$banks = array();
					foreach($response['available_banks'] as $available_banks){
						$banks[] = $available_banks;
					}

					$open_banks = count($banks);

					echo '<h2>' . __( 'Payment data', 'xendit' ) . '</h2>';
						echo '
							<table class="shop_table order_details">
								<tbody>
                  <tr><td colspan="2"><iframe width="100%" height="800" src="'.$response['invoice_url'].'" frameborder="0" allowfullscreen></iframe></td></tr>
						';
            // <tr>
            //   <td colspan="2">
            //     <div style="text-align:left;">
            //       <strong>'.sprintf( __('You can also pay your invoice to %s this Bank Account:', 'xendit'), $open_banks > 1 ? 'one of' : '').'</strong>
            //     </div>
            //   </td>
            // </tr>
						// $i = 0;
						// foreach ($banks as $bank) {
						// 	if($i % 2 == 0 ){
						// 		echo '
						// 			<tr>
						// 		';
						// 		echo '
						// 				<td width="50%">
						// 					<div style="text-align:left; padding:10px;">
						// 						<img src="'.plugins_url( 'assets/'.strtolower($bank['bank_code']).'.png', __FILE__ ).'" style="max-width:180px;width:100%;" class="img-responsive">
						// 					</div>
						// 					<div style="text-align:left; padding:10px;">
						// 						'.sprintf( __('Bank Name: <strong>%s</strong>', 'xendit'), $bank['bank_code']).'<br />
						// 						'.sprintf( __('Account Number: <strong>%s</strong>', 'xendit'), $bank['bank_account_number']).'<br />
						// 						'.sprintf( __('Account Holder: <strong>%s</strong>', 'xendit'), $bank['account_holder_name']).'<br />
						// 						'.sprintf( __('Bank Branch: <strong>%s</strong>', 'xendit'), $bank['bank_branch']).'<br />
						// 						'.sprintf( __('Unique Amount: <strong>%s</strong>', 'xendit'), wc_price($bank['transfer_amount'])).'<br />
						// 					</div>
						// 				</td>
						// 		';
						// 	}
						// 	else{
						// 		echo '
						// 				<td width="50%">
						// 					<div style="text-align:left; padding:10px;">
						// 						<img src="'.plugins_url( 'assets/'.strtolower($bank['bank_code']).'.png', __FILE__ ).'" style="max-width:180px;width:100%;" class="img-responsive">
						// 					</div>
						// 					<div style="text-align:left; padding:10px;">
						// 						'.sprintf( __('Bank Name: <strong>%s</strong>', 'xendit'), $bank['bank_code']).'<br />
						// 						'.sprintf( __('Account Number: <strong>%s</strong>', 'xendit'), $bank['bank_account_number']).'<br />
						// 						'.sprintf( __('Account Holder: <strong>%s</strong>', 'xendit'), $bank['account_holder_name']).'<br />
						// 						'.sprintf( __('Bank Branch: <strong>%s</strong>', 'xendit'), $bank['bank_branch']).'<br />
						// 						'.sprintf( __('Unique Amount: <strong>%s</strong>', 'xendit'), wc_price($bank['transfer_amount'])).'<br />
						// 					</div>
						// 				</td>
						// 			';
						// 		echo '
						// 			</tr>
						// 		';
						// 	}
						// 	$i++;
						// }

						echo '
									<tr>
										<td colspan="2">
											<div style="text-align:left;">
												<strong><a class="button cancel" href="'.$order->get_cancel_order_url().'">'.__('Cancel order &amp; restore cart', 'xendit').'</a></strong>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						';
				endif;

			}

		}

		public function process_payment($order_id){
			global $wpdb, $woocommerce;
			$order = new WC_Order($order_id);

			// Set payment pending
			$order->update_status('pending', __( 'Awaiting Xendit payment', 'xendit' ));

			// Return thankyou redirect
			if(is_page(woocommerce_get_page_id('thanks')) && $order->status == $this->sucess_payment_xendit){
				return array(
					'result' => 'success',
					'redirect' => add_query_arg('key', $order->order_key, add_query_arg('order', $order->id, get_permalink(woocommerce_get_page_id('thanks'))))
				);
			} else {
				return array(
					'result' => 'success',
					'redirect' => add_query_arg('order', $order->id, add_query_arg('key', $order->order_key, get_permalink(woocommerce_get_page_id('pay' ))))
				);
			}
		}

		public function update_status_complete( $order_id ){
			global $wpdb, $woocommerce;

			$order = new WC_Order($order_id);

			return $this->sucess_payment_xendit;
		}

		public function validate_payment($response){
			global $wpdb, $woocommerce;

			$order_id = $response->external_id;
			$merchant_names = array($this->merchant_name, 'Xendit');

			$xendit_status = $this->xendit_status;

			if(/*in_array($response->merchant_name, $merchant_names) && */$order_id != '') {

				$this->add_log("{$xendit_status} Xendit merchant check passed, continue!", true);

				if($response->id == '579c8d61f23fa4ca35e52da4'){
					$this->add_log("{$xendit_status} Invoice #{$response->id} was pushed from Xendit!", true);
					die(json_encode($response, JSON_PRETTY_PRINT));
				}

				$order_num = str_replace("orderid_", "", $order_id);
				$order 	= new WC_Order($order_num);

				if($this->developmentmode != 'yes'){

					$payment_gateway = wc_get_payment_gateway_by_order( $order->id );
					if ( FALSE === get_post_status( $order->id ) || ($payment_gateway->id != $this->id)) {

						$this->add_log("{$xendit_status} Xendit is live and required valid order id!", false);

						header('HTTP/1.1 501 Invalid Data Received');
						exit;
					}
				}

				if($this->sucess_responce_xendit == $response->status || 'PAID' == $response->status){

					$this->add_log("{$xendit_status} Xendit is {$response->status}, Proccess Order!", true);

					$mailer = $woocommerce->mailer();
					$admin_email = get_option( 'admin_email' );

					$message = $mailer->wrap_message( __('Order confirmed', 'xendit'), sprintf( __('Order %s has been confirmed', 'xendit'), $order->get_order_number() ) );
					if(FALSE === $order->id)
						$mailer->send( $admin_email, sprintf( __('Payment for order %s confirmed', 'xendit'), $order->get_order_number() ), $message );

					$message = $mailer->wrap_message( __('Order confirmed', 'xendit'), sprintf( __('Order %s has been confirmed', 'xendit'), $order->get_order_number() ) );
					if(FALSE === $order->id)
						$mailer->send( $order->billing_email, sprintf( __('Payment for order %s confirmed', 'xendit'), $order->get_order_number() ), $message );

					$notes = json_encode(
								array(
									'invoice_id' => $response->id,
									'status' => $response->status,
									'payment_method' => $response->payment_method,
									'paid_amount' => $response->paid_amount,
								)
							);

					$note = "Xendit Payment Response:".
							"{$notes}";

					$order->add_order_note('Xendit payment successful');
					$order->add_order_note( $note );
					//$order->add_order_note($this->msg['message']);

					// Do mark payment as complete
					$order->payment_complete();

					// Reduce stock levels
					$order->reduce_order_stock();

					// Empty cart in action
					$woocommerce->cart->empty_cart();

					$this->add_log("{$xendit_status} Order #{$order->id} now mark as complete with Xendit!", true);

					//die(json_encode($response, JSON_PRETTY_PRINT)."\n");
					die('SUCCESS');

				}
				else{

					$this->add_log("{$xendit_status} Xendit is {$response->status}, Proccess Order Declined!", false);

					$order->update_status('failed');

					$notes = json_encode(
								array(
									'invoice_id' => $response->id,
									'status' => $response->status,
									'payment_method' => $response->payment_method,
									'paid_amount' => $response->paid_amount,
								)
							);

					$note = "Xendit Payment Response:".
							"{$notes}";

					$order->add_order_note('Xendit payment failed');
					$order->add_order_note($note);
					//$order->add_order_note($this->msg['message']);

					header('HTTP/1.1 501 Invalid Data Received');
					exit;

				}
			}
			else {
				//$this->add_log("{$xendit_status} Xendit merchant check not passed, break!", false);
				$this->add_log("{$xendit_status} Xendit external id check not passed, break!", false);

				header('HTTP/1.1 501 Invalid Data Received');
				exit;
			}
		}

		public function xendit_status_payment_gateways( $gateways ) {
			global $wpdb, $woocommerce;
			//WC()->cart->total;
			$amount = floatval( preg_replace( '#[^\d.]#', '', $woocommerce->cart->get_cart_total() ) );

			if ( $amount < $this->amount_to_live ) :
				unset( $gateways[$this->id] );
			endif;
			return $gateways;
		}

		public function add_log( $message, $success, $end = false ){
			if (!file_exists(dirname( __FILE__ ).'/log.txt')) {
				file_put_contents(dirname( __FILE__ ).'/log.txt', 'Xendit Logs'."\r\n");
			}

			$text = "[".date( "m/d/Y g:i A" )."] - ".( $success ? "SUCCESS :" : "FAILURE :" ).$message."\n";

			if ( $end ){
				$text .= "\n------------------------------------------------------------------\n\n";
			}

			$debug_log_file_name = dirname( __FILE__ ) . '/log.txt';
			$fp = fopen( $debug_log_file_name, "a" );
			fwrite( $fp, $text );
			fclose( $fp );
		}

	}

	require_once(dirname(__file__) . '/libs/xendit-charges.php');

	function check_xendit_response(){
		global $wpdb, $woocommerce;

		if(isset($_REQUEST['xendit_mode']) && $_REQUEST['xendit_mode'] == 'xendit_callback'){

			$xendit = new woocommerce_xendit_gateway();
			$xendit_status = $xendit->developmentmode == 'yes' ? "[Development]" : "[Production]";

			$script_base = str_replace(array("https://", "http://"), "", home_url());
			$script_base = str_replace($_SERVER['SERVER_NAME'], "", $script_base);
			$script_base = rtrim($script_base, '/');

			if( ($_SERVER["REQUEST_METHOD"] === "POST") && ($_SERVER["SCRIPT_NAME"] === "{$script_base}/index.php") ){
				$headers = getallheaders();
        $current_callback_token = $headers['X-CALLBACK-TOKEN'];
        $xendit->add_log("{$xendit_status} Headers: ".print_r($headers, TRUE), true);
        $xendit->add_log("{$xendit_status} Validation Token: ".$current_callback_token, true);
        $xendit->add_log("{$xendit_status} Saved Xendit Token: ".$xendit->callback_token, true);

				if($current_callback_token == $xendit->callback_token){
					$data = file_get_contents("php://input");
					$response = json_decode($data);

					$xendit->add_log("{$xendit_status} Callback Request: Xendit was sent valid data!", true);

					if($xendit->developmentmode == 'yes')
						$xendit->add_log(json_encode($response, JSON_PRETTY_PRINT), true);

					$xendit->validate_payment($response);
				}
				else {
					$xendit->add_log("{$xendit_status} Callback Request: Invalid token!", true);
					header('HTTP/1.1 501 Invalid Token');
					exit;
				}
			}
			else {
				$xendit->add_log("{$xendit_status} Callback Request: Invalid callback!", true);
				header('HTTP/1.1 501 Invalid Callback');
				exit;
			}
		}
	}

	if(isset($_REQUEST['xendit_mode']) && $_REQUEST['xendit_mode'] == 'xendit_callback'){
		add_action('init', 'check_xendit_response');
	}

	function woocommerce_add_xendit_gateway($methods){
        $methods[] = 'woocommerce_xendit_gateway';
        return $methods;
    }
	add_filter('woocommerce_payment_gateways', 'woocommerce_add_xendit_gateway');

}

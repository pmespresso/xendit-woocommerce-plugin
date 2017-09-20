<?php

    //namespace XenditClient;

    class XenditPHPClient {
        function __construct ($options) {
            if ($options['server_domain']) {
                $this->server_domain = $options['server_domain'];
            } else {
                $this->server_domain = 'https://api.xendit.co';
            }

            $this->secret_api_key = $options['secret_api_key'];
        }

        function createInvoice ($external_id, $amount, $payer_email, $description) {
            $curl = curl_init();

            $headers = array();
            $headers[] = 'Content-Type: application/json';

            $end_point = $this->server_domain.'/v2/invoices';

            $data['external_id'] = $external_id;
            $data['amount'] = (int)$amount;
            $data['payer_email'] = $payer_email;
            $data['description'] = $description;

            $payload = json_encode($data);

            $args = array(
              'headers' => array(
                'Authorization' => 'Basic ' . base64_encode($this->secret_api_key . ':'),
                'content-type' => 'application/json'
              ),
              'body' => $payload,
            );
            $response = wp_remote_post( $end_point, $args );
            $jsonResponse = json_decode( $response['body'], true );
            return $jsonResponse;
        }

        function createDisbursement ($external_id, $amount, $bank_code, $account_holder_name, $account_number) {
            $curl = curl_init();

            $headers = array();
            $headers[] = 'Content-Type: application/json';

            $end_point = $this->server_domain.'/disbursements';

            $data['external_id'] = $external_id;
            $data['amount'] = (int)$amount;
            $data['bank_code'] = $bank_code;
            $data['account_holder_name'] = $account_holder_name;
            $data['account_number'] = $account_number;

            $payload = json_encode($data);

            $args = array(
              'headers' => array(
                'Authorization' => 'Basic ' . base64_encode($this->secret_api_key . ':'),
                'content-type' => 'application/json'
              ),
              'body' => $payload,
            );
            $response = wp_remote_post( $end_point, $args );
            $jsonResponse = json_decode( $response['body'], true );
            return $jsonResponse;
        }

        function createCallbackVirtualAccount ($external_id, $bank_code, $name) {
            $curl = curl_init();

            $headers = array();
            $headers[] = 'Content-Type: application/json';

            $end_point = $this->server_domain.'/callback_virtual_accounts';

            $data['external_id'] = $external_id;
            $data['bank_code'] = $bank_code;
            $data['name'] = $name;

            $payload = json_encode($data);

            $args = array(
              'headers' => array(
                'Authorization' => 'Basic ' . base64_encode($this->secret_api_key . ':'),
                'content-type' => 'application/json'
              ),
              'body' => $payload,
            );
            $response = wp_remote_post( $end_point, $args );
            $jsonResponse = json_decode( $response['body'], true );
            return $jsonResponse;
        }

        function getDisbursement ($disbursement_id) {
            $curl = curl_init();

            $headers = array();
            $headers[] = 'Content-Type: application/json';

            $end_point = $this->server_domain.'/disbursements/'.$disbursement_id;

            $args = array(
              'headers' => array(
                'Authorization' => 'Basic ' . base64_encode($this->secret_api_key . ':'),
                'content-type' => 'application/json'
              ),
            );
            $response = wp_remote_get( $end_point, $args );
            $jsonResponse = json_decode( $response['body'], true );
            return $jsonResponse;
        }

        function getInvoice ($invoice_id) {
            $curl = curl_init();

            $headers = array();
            $headers[] = 'Content-Type: application/json';

            $end_point = $this->server_domain.'/v2/invoices/'.$invoice_id;

            $args = array(
              'headers' => array(
                'Authorization' => 'Basic ' . base64_encode($this->secret_api_key . ':'),
                'content-type' => 'application/json'
              ),
            );
            $response = wp_remote_get( $end_point, $args );
            $jsonResponse = json_decode( $response['body'], true );
            return $jsonResponse;
        }

        function getBalance () {
            $curl = curl_init();

            $headers = array();
            $headers[] = 'Content-Type: application/json';

            $end_point = $this->server_domain.'/balance';

            $args = array(
              'headers' => array(
                'Authorization' => 'Basic ' . base64_encode($this->secret_api_key . ':'),
                'content-type' => 'application/json'
              ),
            );
            $response = wp_remote_get( $end_point, $args );
            $jsonResponse = json_decode( $response['body'], true );
            return $jsonResponse;
        }

        function captureCreditCardPayment($external_id, $token_id, $amount) {
            $curl = curl_init();

            $headers = array();
            $headers[] = 'Content-Type: application/json';

            $end_point = $this->server_domain.'/credit_card_charges';

            $data['external_id'] = $external_id;
            $data['token_id'] = $token_id;
            $data['amount'] = $amount;

            $payload = json_encode($data);

            $args = array(
              'headers' => array(
                'Authorization' => 'Basic ' . base64_encode($this->secret_api_key . ':'),
                'content-type' => 'application/json'
              ),
              'body' => $payload,
            );
            $response = wp_remote_post( $end_point, $args );
            $jsonResponse = json_decode( $response['body'], true );
            return $jsonResponse;
        }
    }
?>

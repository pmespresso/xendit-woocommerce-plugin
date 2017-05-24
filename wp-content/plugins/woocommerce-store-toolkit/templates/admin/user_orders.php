<h3><?php _e( 'User Orders', 'woocommerce-store-toolkit' ); ?></h3>
<table class="form-table">
	<tr>
		<th>
			<label><?php _e( 'Orders', 'woocommerce-store-toolkit' ); ?></label>
		</th>
		<td>

			<table class="wp-list-table widefat fixed striped order_data" cellspacing="0">

				<thead>
					<tr>
						<th scope="col" id="order_status" class="manage-column column-order_status">
							<span class="status_head tips"><?php _e( 'Status', 'woocommerce-store-toolkit' ); ?></span>
						</th>
						<th class="manage-column"><?php _e( 'Order', 'woocommerce-store-toolkit' ); ?></th>
						<th class="manage-column"><?php _e( 'Date', 'woocommerce-store-toolkit' ); ?></th>
						<th class="manage-column"><?php _e( 'Total', 'woocommerce-store-toolkit' ); ?></th>
					</tr>
				</thead>

				<tbody class="the-list">
<?php if( !empty( $customer_orders ) ) { ?>
	<?php foreach( $customer_orders as $customer_order ) { ?>
<?php
if( version_compare( WOOCOMMERCE_VERSION, '2.7', '>=' ) ) {
	// $order = wc_get_order( $customer_order );
	$order = new WC_Order( $customer_order );
	$order_id = trim( str_replace( '#', '', $order->get_order_number() ) );
	$payment_method_title = $order->get_payment_method_title();
	$order_date = $order->get_date_created();
	$order_status = $order->get_status();
	$order_total = $order->get_formatted_order_total();
} else {
	$order = new WC_Order();
	$order->populate( $customer_order );
	$order_id = esc_attr( $order->get_order_number() );
	$order_data = (array)$order;
	$payment_method_title = $order->payment_method_title;
	$order_date = $order->order_date;
	$order_status = $order->post_status;
	$order_total = $order->get_formatted_order_total();
}
?>
					<tr class="type-shop_order status-<?php echo $order_status; ?>">
						<td class="order_status column-order_status" data-colname="Status">
							<mark class="<?php echo sanitize_title( $order_status ); ?> tips" data-tip="<?php echo wc_get_order_status_name( $order_status ); ?>"><?php echo wc_get_order_status_name( $order_status ); ?></mark>
						</td>
						<td><a href="<?php echo admin_url( 'post.php?post=' . absint( $order_id ) . '&action=edit' ); ?>" class="row-title"><strong>#<?php echo $order_id; ?></strong></a></td>
						<td>
<?php
if( '0000-00-00 00:00:00' == $order_date ) {
	$t_time = $h_time = __( 'Unpublished', 'woocommerce' );
} else {
	$t_time = get_the_time( __( 'Y/m/d g:i:s A', 'woocommerce' ), $customer_order );
	$h_time = get_the_time( __( 'Y/m/d', 'woocommerce' ), $customer_order );
}
echo '<abbr title="' . esc_attr( $t_time ) . '">' . esc_html( apply_filters( 'post_date_column_time', $h_time, $customer_order ) ) . '</abbr>';
?></td>
						<td>
<?php
echo $order_total;

if( $payment_method_title )
	echo '<small class="meta">' . __( 'Via', 'woocommerce' ) . ' ' . esc_html( $payment_method_title ) . '</small>';
?>
						</td>
					</tr>
	<?php } ?>
<?php } else { ?>
					<tr>
						<td colspan="4"><?php _e( 'No Orders have been been saved', 'woocommerce-store-toolkit' ); ?></td>
					</tr>
<?php } ?>
				</tbody>


			</table>
<?php if( !empty( $customer_orders ) ) { ?>
			<p style="text-align:right;"><?php printf( __( '%d items', 'woocommerce-store-toolkit' ), count( $customer_orders ) ); ?></p>
<?php } ?>

		</td>
	</tr>
</table>
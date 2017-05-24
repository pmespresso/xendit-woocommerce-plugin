<?php
	//Preventing Direct Access
	if ( !defined('WPINC') ){ die('Access Not Allowed!'); }

	GLOBAL $wppbe;
?>

<div id="wppbe">
	<div class="wppbe_options_cats">
			<div class="row">
				<div class="col-md-12 deactive-options">&nbsp;</div>
				<div class="col-md-2 col-sm-4 col-xs-4 wppbe_options_cats_title">
					<p><?php _e('SELECTED CATEGORIES:','wppbe'); ?></p>
				</div>

				<div class="col-md-10 col-sm-8 col-xs-8 wppbe_options_cats_content">
					<span class="single_cat"><?php _e('All Categories','wppbe'); ?></span>
					<span class="select_cat" data-toggle="modal" data-target="#catsmodal"><span>+</span><?php _e('Select A Category to Filter','wppbe'); ?></span>
				</div>
			</div>

		<div id="more-options-collapse" class="panel-collapse collapse">
			<div class="panel-body">
					<div class="row">
						<div class="col-md-2 col-sm-4 col-xs-4 wppbe-float-right">
							<p><?php _e('Number of Results in A Page:','wppbe'); ?></p>
						</div>

						<div class="col-md-10 col-sm-8 col-xs-8">
							<div class="row">
								<input type="text" name="show_products_page_limit" id="show_products_page_limit" value="<?php echo get_option('wppbe_show_products_page_limit'); ?>">
								<button type="button" class="btn btn-primary" id="update_options"><?php _e('Update','wppbe'); ?></button>
							</div>
						</div>
					</div>
			</div>
		</div>
		<a data-toggle="collapse" id="more-options" href="#more-options-collapse"><?php _e('More Options','wppbe'); ?></a>
	</div>

	<div class="product-search-box">
		<div class="col-md-3"></div>
		<div class="form-group col-md-6">
			<div class="input-group">
		    <input type="text" class="form-control" id="search_product" placeholder="<?php _e('Type Product Name To Search...', 'wppbe'); ?>">
				<span class="input-group-addon glyphicon glyphicon-search"></span>
		  </div>
			<span id="helpBlock2" class="help-block"><?php _e('Please Type Product\'s Name You Want to Find Then Wait for Results','wppbe'); ?></span>
		</div>
		<div class="col-md-3"></div>
	</div>

	<!--Options And Filters-->
	<div id="wpbe_products_options" class="col-md-12">
			<!--Categories Filter-->

			<div class="modal fade" id="catsmodal" role="dialog">
		    <div class="modal-dialog modal-lg">
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-body">
							<h3 class="modal-title text-center"><?php _e('Categories','wppbe'); ?></h3>
							<p><?php _e('All Product\'s Categories Are Listed Here. if you Select Them And close this window, The List Will Updated And Showes Products with Categories of Your Selection. So Pick Categories Here to Filter The List','wppbe'); ?></p>
							<?php
								$obj = new Wppbe();
								$cats = $obj->wppbe_show_options();
								foreach($cats as $cat)
								{
									?>
										<div class="wpbe_single_cat col-md-3">
											<input class="category_checkbox" id="<?php echo $cat->term_id; ?>" cat_name="<?php echo $cat->name; ?>" type="checkbox">
											<label for="<?php echo $cat->term_id; ?>"><?php echo $cat->name; ?>(<?php echo $cat->count; ?>)</label>
										</div>
									<?php
								}
							?>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-lg btn-danger btn-block category-close-btn" data-dismiss="modal"><?php _e('Close','wppbe'); ?></button>
		        </div>
		      </div>
		    </div>
		  </div>

			<div class="modal fade in" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
			<div class="modal-dialog">
      	<div class="modal-content">
        	<div class="modal-body">
            	<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove"></span></button>
        		<div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6 text-center vert-split">
                		<h3><?php _e('Move to Trash','wppbe'); ?></h3>
                      <img class="animated bounceIn" height="200" width="200" src="<?php echo plugin_dir_url( __DIR__ ) . 'css/delete-modal-icon-1.gif'; ?>">
                		<p><?php _e('This Option <b>Doesn\'t Delete The Product Entirely</b> and it Means You can see it in <b>Products Trash</b>. This Option is <b>Recomended</b>','wppbe'); ?></p>
                      <div class="spacer"></div>
                    	<a href="#" class="btn btn-lg btn-warning btn-block" id="delete_modal_trash_btn"><?php _e('Trash','wppbe'); ?></a>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6 text-center">
                		<h3><?php _e('Delete Permanently','wppbe'); ?></h3>
                     	<img class="animated bounceIn" height="200" width="200" src="<?php echo plugin_dir_url( __DIR__ ) . 'css/delete-modal-icon-2.gif'; ?>">
                		<p><?php _e('Use This Option with <b>Caution</b>. This Option <b>Deletes Selected Product Entirely</b>. It Means You <b>Can Not</b> See it in Trashes to Get it Back','wppbe'); ?></p>
                      <div class="spacer"></div>
                    	<a href="#" class="btn btn-lg btn-danger btn-block" id="delete_modal_delete_btn"><?php _e('Delete','wppbe'); ?></a>
                </div>
              </div>
        	</div>
      </div>
    </div>
	</div>

	</div><!--wpbe_products_options-->

	<!--Products List-->
	<div id="products-list" class="col-md-12"></div>
</div><!--wppbe-->

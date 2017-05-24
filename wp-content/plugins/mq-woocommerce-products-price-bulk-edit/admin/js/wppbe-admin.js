jQuery(document).ready( function($){
	show_products(1);
	do_search_products($);
	update_options($);
});

jQuery(document).on('click', "a#delete_modal_trash_btn", function(){
	event.preventDefault();
	delete_product(jQuery('#delete_modal_trash_btn').attr('pid'), 'trash');
});

jQuery(document).on('click', "a#delete_modal_delete_btn", function(){
	event.preventDefault();
	delete_product(jQuery('#delete_modal_delete_btn').attr('pid'), 'delete');
});

jQuery(document).on('click', ".price-delete-btn", function(){
	event.preventDefault();
	$pid = jQuery(this).attr('pid');
	set_delete_modal_pid($pid);
});

jQuery(document).on('hide.bs.modal', "#catsmodal", function(){
	$result = repeat(jQuery);
	jQuery('.wppbe_options_cats_content').html($result[0]);
	show_products(1);

	delete_selected_cat(jQuery);
	removeAll_selected_cats(jQuery);
});


function repeat($)
{
	var $cats_array = [];
	var $output = '';
	if($('.category_checkbox:checkbox:checked').length > 0)
	{
		$('.category_checkbox:checkbox:checked').each(function(){
				var $title 	= $(this).attr('cat_name');
				var $id 		= $(this).attr('id');
				$cats_array.push($id);
				$output += '<span class="single_cat" id="' + $id + '">' + $title + '<i class="single_cat_close glyphicon glyphicon-remove"></i></span>';
		});
		$output += '<span class="select_cat modify_cat" data-toggle="modal" data-target="#catsmodal"><span>+/-</span>' + object.modify_cats_text + '</span>';
		$output += '<span class="select_cat remove_cats"><span class="glyphicon glyphicon-remove"></span>' + object.remove_all_text + '</span>';
	}
	else
	{
		$cats_array = [];
		$output = set_to_default_cats_filter();
	}
	return [$output, $cats_array]
}

function get_cats_array($)
{
	var $cats_array = [];
	if($('.category_checkbox:checkbox:checked').length > 0)
	{
		$('.category_checkbox:checkbox:checked').each(function(){
				var $id = $(this).attr('id');
				$cats_array.push($id);
		});
	}
	else
	{
		$cats_array = [];
	}
	return $cats_array;
}

function removeAll_selected_cats($)
{
	$('.remove_cats').click(function(){
		$('.single_cat').each(function(){
			$(this).remove();
		});
		$('.wpbe_single_cat .category_checkbox').each(function(){
			$(this).attr('checked', false);
		});

		$output = set_to_default_cats_filter();
		$('.wppbe_options_cats_content').html($output);
		show_products(1);
	});
}

function delete_selected_cat($)
{
	$('.single_cat .single_cat_close').click(function(){
		if($('.single_cat').length > 1)
		{
			$(this).parent().remove();

			// First Uncheck category then run repeat($)
			$cat_id = $(this).parent().attr('id');
			$('input#' + $cat_id).attr('checked', false);

			$result = repeat($);
			show_products(1);
		}
		else
		{
			$output = set_to_default_cats_filter();
			$('.wppbe_options_cats_content').html($output);

			//Removing Last selected category checkbox
			$cat_id = $(this).parent().attr('id');
			$('input#' + $cat_id).attr('checked', false);

			show_products(1);
		}

	});
}

function set_to_default_cats_filter()
{
	var $output = '<span class="single_cat">' + object.all_cats_text + '</span>';
	$output += '<span class="select_cat" data-toggle="modal" data-target="#catsmodal"><span>+</span>' + object.select_cats_to_filter_text + '</span>';
	return $output;
}

function show_products($current_page)
{
	var data;
	data = {
			'action'			: 	'get_results',
			'current_page':		$current_page
	};

	var $cats_array;
	$cats_array = get_cats_array(jQuery);
	if($cats_array.length != 0)
	{
		data.cats_array = $cats_array;
	}

	var $search_string;
	$search_string = jQuery('#search_product').val();
	if($search_string != '')
	{
		data.search_string = $search_string;
	}

	jQuery.ajax({
		type:			"POST",
		url: 			ajaxurl,
		data: 		data,
		success: 	function(response){
			jQuery('#products-list').html(response);
			scroll_to_top();

			//All Dom Actions
			re_run_dom_actions_after_showing_products($cats_array);

			//ReEnable Filter Options
			jQuery('.deactive-options').hide();
			show_products_preloader('end');
		},
		beforeSend: function(){
			//Disable Filter Options
			jQuery('.deactive-options').show();
			show_products_preloader('start');
		}
	});
}

function re_run_dom_actions_after_showing_products($cats_array)
{
	do_paginate($cats_array);
	do_update();
}

function re_run_dom_actions_after_update_prices()
{
	do_update();
}

function do_paginate($cats_array)
{
	jQuery('.pagination a').on('click', function(event){
		event.preventDefault();
		if(jQuery(this)[0].hasAttribute("page_number"))
		{
			// if user pressed Next or Previous Button
			show_products(jQuery(this).attr("page_number"));
		}
		else
		{
			// if user just click the numbers
			show_products(jQuery(this).html());
		}
	});
}

function add_product_to_json_obj($pid, $rprice, $sprice)
{
  var product = {};
  product["pid"] 		= $pid;
  product["rprice"] = $rprice;
  product["sprice"] = $sprice;

  return product; // jsonObj.push(product);
}

function do_update()
{
	jQuery('a.price-update-btn').on('click', function(event){
		event.preventDefault();
		var $pids				= jQuery(this).attr('pid');
		var $parent_pid = jQuery(this).attr('parent_pid');
		var $ptype 			= jQuery(this).attr('ptype');
		var $pids_array = $pids.split("-");
		var $json_obj		= [];
		var $validation_error_flag = 0;
		var $validation_message = '';


		if($ptype == "variable")
		{
			// Variable Product

			// 1- Get Product's Title with parent id
			var $parent_title = jQuery('input[pid="' + $parent_pid + '"]').val();

			// 2- save all variable prices
			for (i = 0; i < $pids_array.length; i++)
			{
				$rprice = parseFloat(jQuery('input[pid="rp-' + $pids_array[i] + '"]').val());
				$sprice = parseFloat(jQuery('input[pid="sp-' + $pids_array[i] + '"]').val());

				if($rprice.length == 0 || isNaN($rprice))
				{
					$validation_error_flag = 1;
					$validation_message = object.alert_1_text;
				}
				else if($rprice < $sprice || $rprice == $sprice)
				{
					$validation_error_flag = 1;
					$validation_message = object.alert_2_text;
				}
				else if($rprice < 0 || $sprice < 0)
				{
					$validation_error_flag = 1;
					$validation_message = object.alert_3_text;
				}

				if($rprice < 0){ $rprice = 0; }
				if($sprice.length === 0){ $sprice = 0; }
				//update_prices($pids_array[i], $rprice, $sprice);
				$json_obj.push(add_product_to_json_obj($pids_array[i], $rprice, $sprice));
			}

			if($validation_error_flag == 0)
			{
				// 3- Now we can save
				update_variable_product($parent_pid, $parent_title, $json_obj, jQuery(this));
			}
			else
			{
				alert($validation_message);
			}
		}
		else
		{
			// Regular Product
			var $parent_title = jQuery('input[pid="' + $pids + '"]').val();
			$rprice = parseFloat(jQuery('input[pid="rp-' + $pids_array[0] + '"]').val());
			$sprice = parseFloat(jQuery('input[pid="sp-' + $pids_array[0] + '"]').val());

			if($rprice.length == 0 || isNaN($rprice))
			{
				$validation_error_flag = 1;
				$validation_message = object.alert_1_text;
			}
			else if($rprice < $sprice || $rprice == $sprice)
			{
				$validation_error_flag = 1;
				$validation_message = object.alert_2_text;
			}
			else if($rprice < 0 || $sprice < 0)
			{
				$validation_error_flag = 1;
				$validation_message = object.alert_3_text;
			}

			if($validation_error_flag == 0)
			{
				update_simple_product($pids_array[0], $parent_title, $rprice, $sprice, jQuery(this));
			}
			else
			{
				alert($validation_message);
			}
		}

	});
}

function set_delete_modal_pid($pid)
{
	jQuery('#delete_modal_trash_btn').attr('pid', $pid);
	jQuery('#delete_modal_delete_btn').attr('pid', $pid);
}

function delete_product($pid, $state)
{
	data = {
		'action' 	: 'delete_product',
		'pid'			:	$pid,
		'state'		: $state
	};
	jQuery.ajax({
		type:			"POST",
		url: 			ajaxurl,
		data: 		data,
		success: 	function(response){
			jQuery('tr#' + $pid).remove();
			jQuery('#deleteModal').modal('toggle');
		},
		beforeSend: function(){

		}
	});
}

function update_simple_product($pid, $ptitle, $rprice, $sprice, $update_btn)
{
	data = {
		'action' 	: 'update_simple_product',
		'pid'			:	$pid,
		'rprice'	:	$rprice,
		'sprice'	:	$sprice,
		'ptitle'	: $ptitle
	};
	jQuery.ajax({
		type:			"POST",
		url: 			ajaxurl,
		data: 		data,
		success: 	function(response){
			update_row($pid, $update_btn);
		},
		beforeSend: function(){
			update_price_preloader($update_btn, 'start');
		}
	});
}

function update_row($pid, $btn)
{
	data = {
		'action' 	: 'update_table_tr',
		'pid'			:	$pid
	};
	jQuery.ajax({
		type:			"POST",
		url: 			ajaxurl,
		data: 		data,
		success: function(response){
			// Finds parent <tr> and replace
			$btn.parent().parent().replaceWith(response);

			// Finish parent <tr> preloading
			update_price_preloader($btn, 'end');

			// run do_update function for dom problem after page ready
			re_run_dom_actions_after_update_prices();
		},
		beforeSend: function(){

		}
	});
}

function update_price_preloader($update_btn, $state)
{
	if($state == 'start')
		$update_btn.closest("tr").css("opacity", "0.5");
	else if($state == 'end')
		$update_btn.closest("tr").css("opacity", "1.0");
}

function show_products_preloader($state)
{
	if($state == 'start')
		jQuery('#products-list').css("opacity", "0.5");
	else if($state == 'end')
		jQuery('#products-list').css("opacity", "1.0");
}

function update_variable_product($parent_pid, $parent_title, $json_obj, $update_btn)
{
	data = {
		'action' 									: 'update_variable_product',
		'parent_id'								:	$parent_pid,
		'variable_products_infos'	:	JSON.stringify($json_obj),
		'parent_title'						: $parent_title
	};
	jQuery.ajax({
		type:			"POST",
		url: 			ajaxurl,
		data: 		data,
		dataType: 'json',
		success: 	function(response){
			// Update row
			update_row($parent_pid, $update_btn);
		},
		beforeSend: function(){
			update_price_preloader($update_btn, 'start');
		}
	});
}

function update_options($)
{
	$('#update_options').on('click', function(){
		$show_limit = parseFloat(jQuery('#show_products_page_limit').val());

		if($.isNumeric($show_limit) && $show_limit != 0 && $show_limit > 0)
		{
			if($show_limit >= 10 && $show_limit <= 1000)
			{
				do_update_options_ajax($(this), $show_limit);
			}
			else
			{
				alert("Sorry, The Number Should Be Between 10 and 1000");
			}
		}
	});
}

function do_update_options_ajax($update_options_btn, $show_limit)
{
	data = {
		'action' 									 : 'update_options',
		'show_products_page_limit' :	$show_limit,
	};
	jQuery.ajax({
		type:			"POST",
		url: 			ajaxurl,
		data: 		data,
		dataType: 'json',
		success: 	function(response){
			location.reload();
		},
		beforeSend: function(){
			$update_options_btn.attr('css', 'opacity: 0.5');
		}
	});
}

// Define done typing Event
;(function($){
    $.fn.extend({
    		donetyping: function(callback,timeout){
            timeout = timeout || 1e3; // 1 second default timeout
            var timeoutReference,
                doneTyping = function(el){
                    if (!timeoutReference) return;
                    timeoutReference = null;
                    callback.call(el);
                };
            return this.each(function(i,el){
                var $el = $(el);
                // Chrome Fix (Use keyup over keypress to detect backspace)
                // thank you @palerdot
                $el.is(':input') && $el.on('keyup keypress paste',function(e){
                    // This catches the backspace button in chrome, but also prevents
                    // the event from triggering too preemptively. Without this line,
                    // using tab/shift+tab will make the focused element fire the callback.
                    if (e.type=='keyup' && e.keyCode!=8) return;

                    // Check if timeout has been set. If it has, "reset" the clock and
                    // start over again.
                    if (timeoutReference) clearTimeout(timeoutReference);
                    timeoutReference = setTimeout(function(){
                        // if we made it here, our timeout has elapsed. Fire the
                        // callback
                        doneTyping(el);
                    }, timeout);
                }).on('blur',function(){
                    // If we can, fire the event since we're leaving the field
                    doneTyping(el);
                });
            });
        }
    });
})(jQuery);

function do_search_products($)
{
	$('#search_product').donetyping(function(){
	  // console.log('Event last fired @ ' + (new Date().toUTCString()));
		show_products(1);
	});
}

function scroll_to_top()
{
	if(jQuery(window).scrollTop() > 220)
	{
		jQuery('html, body').animate({ scrollTop: 0 }, 'slow');
	}
}

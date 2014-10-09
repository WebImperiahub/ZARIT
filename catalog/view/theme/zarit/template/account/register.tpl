<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="wrap" id="wrap">
  <div class="content_nav">
    <div class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>


    <h3 class="orange"><?php echo $heading_title; ?></h3>
    <form class="sing_up" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      <div>
        <p>ФИО<span class="mandatory"></span></p>
        <input type="text" name="firstname" value="<?php echo $firstname; ?>" />
        <?php if ($error_firstname) { ?>
        <span class="error"><?php echo $error_firstname; ?></span>
        <?php } ?>
      </div>
      <div>
        <p><?php echo $entry_email; ?><span class="mandatory"></span></p>
        <input type="text" name="email" value="<?php echo $email; ?>" />
        <?php if ($error_email) { ?>
        <span class="error"><?php echo $error_email; ?></span>
        <?php } ?>
      </div>
      <div>
        <p><?php echo $entry_telephone; ?><span class="mandatory"></span></p>
        <input type="text" name="telephone" value="<?php echo $telephone; ?>" />
        <?php if ($error_telephone) { ?>
        <span class="error"><?php echo $error_telephone; ?></span>
        <?php } ?>
      </div>
      <div>
        <p><?php echo $entry_address_1; ?><span class="mandatory"></span></p>
        <input type="text" name="address_1" value="<?php echo $address_1; ?>" />
        <?php if ($error_address_1) { ?>
        <span class="error"><?php echo $error_address_1; ?></span>
        <?php } ?>
      </div>
      <div>
        <p><?php echo $entry_password; ?><span class="mandatory required"></span></p>
        <input type="password" name="password" value="<?php echo $password; ?>" />
            <?php if ($error_password) { ?>
            <span class="error"><?php echo $error_password; ?></span>
            <?php } ?>
      </div>
      <div>
        <p><?php echo $entry_confirm; ?><span class="mandatory required"></span></p>
        <input type="password" name="confirm" value="<?php echo $confirm; ?>" />
            <?php if ($error_confirm) { ?>
            <span class="error"><?php echo $error_confirm; ?></span>
            <?php } ?>
      </div>



      <div class="radio_choice">
        <span>Подписаться на рассылку новостей:</span>
        <label>
            <?php if ($newsletter) { ?>
            <input class="radio_yes"  type="radio" name="newsletter" value="1" checked="checked" />
            <input class="radio_no" type="radio" name="newsletter" value="0" />
            <?php } else { ?>
            <input class="radio_yes"  type="radio" name="newsletter" value="1" />
            <input class="radio_no" type="radio" name="newsletter" value="0" checked="checked" />
            <?php } ?>
        </label>
      </div>
      <input class="checkout" type="submit button" value="<?php echo $button_continue; ?>" />
    </form>
</div>
<script type="text/javascript"><!--
$('input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
});
//--></script> 
<?php echo $footer; ?>
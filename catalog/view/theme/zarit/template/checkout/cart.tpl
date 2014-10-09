<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>

<div class="wrap cart_list">
    <h2><?php echo $heading_title; ?></h2>
    <div class="cart_table">
    <div class="table_title">
        <div class="col1">Фото</div>
        <div class="col2">Наименование</div>
        <div class="col3">Количество</div>
        <div class="col4">Цена за шт.</div>
        <div class="col5">Скидка</div>
        <div class="col6">Цена со скидкой</div>
      </div>


      <?php foreach ($products as $product) { ?>




      <div class="table_row">
        <div class="col1"><div class="img"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="magnify" style="width:100px; height:100px;" data-magnifyby="7" /></div></div>
        <div class="col2"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <div class="col3"><div class="number_of"><a href="#">&ndash;</a><input type="text" value="<?php echo $product['quantity']; ?>" /><a href="#">+</a></div></div>
        <div class="col4"><?php echo $product['price']; ?></div>
        <div class="col5">Нет</div>
        <div class="col6"><?php echo $product['total']; ?></div>
        <div><img src="/catalog/view/theme/zarit/img/cross.png" alt="cross" title="Удалить" class="remove" /></div>
      </div>
      <?php } ?>   
      
      
      <div class="table_foot">
        <div><a href="#" class="continue_shopping">продолжить покупки</a></div>
        <div class="total">итого: <span><?php $endT = end($totals); echo $endT['text']; ?></span></div>
      </div>
    </div><!-- cart_table -->
    <div class="special_offer">
      <p>
        <strong><span>Внимание!</span> Для жителей следующих областей:</strong>
        <span>Москва и Московская область</span>
        <span>Белгородская</span>
        <span>Курская</span>
        <span>Орловская</span>
        <span>Тульская</span>
        <strong>действует акционное предложение на услуги монтажа видеооборудования!</strong>
      </p>
      <form><label for="">Заказать монтаж оборудования</label><input type="checkbox" /></form>
    </div>
    <div class="order_form">
      <div class="without_clearance">
        <h4>Заказать без оформления</h4>
        <p class="clearance">Можно не заполнять никаких форм, а оставить номер телефона и наш консультант решит все вопросы по оформлению заказа.</p>
        <form>
          <div>
            <input type="text" placeholder="+7 (XXX) XXX-XX-XX" />
            <span>например: +7 (095) 414-51-23</span>
          </div>
          <input type="button" value="Жду звонка" class="waiting_call" />
        </form>
      </div>
      <div>
        <h4>Оформление заказа</h4>
        <form class="universal">
          <div class="create_account">
            <span>Зарегистрироваться на сайте:</span>
            <label for="">
              <input class="radio_yes" type="radio" name="create_an_account" value="yes" />
              <input class="radio_no" type="radio" name="create_an_account" value="no" checked />
            </label>
            <a href="#">Я зарегистрирован</a>
          </div>
          <div>
            <p>ФИО<span class="mandatory"></span></p>
            <input type="text" />
          </div>
          <div>
            <p>E-mail</p>
            <input type="text" />
            <span class="explanation">для отслеживания состояния заказа</span>
          </div>
          <div>
            <p>Телефон<span class="mandatory"></span></p>
            <input type="text" />
          </div>
          <div>
            <p>Адрес<span class="mandatory"></span></p>
            <input type="text" />
          </div>
          <div>
            <p>Выбор способа доставки:</p>
            <select>
              <option value="">Вариант1</option>
              <option value="">Вариант2</option>
              <option value="">Вариант3</option>
            </select>
          </div>
          <div>
            <p>Выбор способа оплаты:</p>
            <select>
              <option value="">Вариант1</option>
              <option value="">Вариант2</option>
              <option value="">Вариант3</option>
            </select>
          </div>
          <div>
            <p>Коментарий к заказу</p>
            <textarea rows="2"></textarea>
          </div>
          <div class="buttons">
            <input class="continue_shopping" type="button" value="продолжить покупки" />
            <input class="checkout" type="button" value="оформить заказ" />
          </div>
        </form>
      </div>
    </div>
  </div><!-- wrap -->
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
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
<?php } ?>
<?php echo $footer; ?>

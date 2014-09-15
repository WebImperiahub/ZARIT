<?php echo $header; ?>


  










  <div class="wrap">
    <div class="breadcrumb">
    <?php $breadLength = count($breadcrumbs) - 1; ?>
      <?php foreach ($breadcrumbs as $k => $breadcrumb) { ?>
        <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php if($k != $breadLength) echo $breadcrumb['separator'];?>
      <?php } ?>
    </div>
    <h2><?php echo $heading_title; ?></h2>
    <div class="item_card">
      <div class="appearance">
        <div class="product_photos">
          <strong><img src="/catalog/view/theme/zarit/img/hit.png" alt="hit" /></strong>
          <img src="<?php echo $popup; ?>" alt="<?php echo $heading_title; ?>" class="magnify" style="width:352px; height:447px;" data-magnifyby="2" />
        </div>
        <ul class="rating popularity3">
          <li class="star1"></li>
          <li class="star2"></li>
          <li class="star3"></li>
          <li class="star4"></li>
          <li class="star5"></li>
        </ul>
      </div><!-- appearance -->
      <div>
        <div class="review">
          <div>
            <dl>
              <dt>Артикул:</dt>
              <dd><?php echo $model; ?></dd>
              <dt><?php echo $text_stock; ?></dt>
              <dd><?php echo $stock; ?></dd>
            </dl>
            <img src="/catalog/view/theme/zarit/img/soc.png" alt="soc" /> 
          </div>
          <div>
          <?php if ($price) { ?>
            <div class="price"><?php echo $price; ?> <span><?php echo $price_symbol_right; ?></span></div>
            <input type="button" value="купить" class="button" />
          <?php } ?>
          </div>
        </div><!-- review -->
        <div class="specifications">
          <h6>Краткие технические характеристики:</h6>
          <?php echo $description; ?>
        </div><!-- specifications -->
        <div class="action">
          <h3>Акционное предложение!</h3>
          <div>
            <div class="products">
              <img src="/catalog/view/theme/zarit/img/camcorder_ak.png" alt="camcorder" />IP-камера <span>ZAVIO F3206</span>
            </div>
            <div class="offer"><img src="/catalog/view/theme/zarit/img/storage.png" alt="storage" />Месяц бесплатного хранения данных</div>
            <div><div class="price">13 800<span>руб</span></div><input type="button" value="заказать" class="button" /></div>
          </div>
        </div>
      </div>
    </div><!-- item_card -->
    <div id="tabs" class="htabs">
      <a href="#tab-attribute" class="selected">Характеристики</a>
      <a href="#tab-photo">Фото</a>
      <a href="#tab-reviews">Отзывы</a>
      <a href="#tab-services">Услуги</a>
    </div>
    <div id="tab-attribute" class="tab-content" style="display: block;">
      <?php echo $short_description; ?>
    </div>
    <div id="tab-photo" class="tab-content"><?php echo $photos; ?></div>
    <div id="tab-reviews" class="tab-content">
       <div id="review"></div>
      <h2 id="review-title"><?php echo $text_write; ?></h2>
      <b><?php echo $entry_name; ?></b><br />
      <input type="text" name="name" value="" />
      <br />
      <br />
      <b><?php echo $entry_review; ?></b>
      <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
      <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
      <br />
      <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
      <input type="radio" name="rating" value="1" />
      &nbsp;
      <input type="radio" name="rating" value="2" />
      &nbsp;
      <input type="radio" name="rating" value="3" />
      &nbsp;
      <input type="radio" name="rating" value="4" />
      &nbsp;
      <input type="radio" name="rating" value="5" />
      &nbsp;<span><?php echo $entry_good; ?></span><br />
      <br />
      <b><?php echo $entry_captcha; ?></b><br />
      <input type="text" name="captcha" value="" />
      <br />
      <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
      <br />
      <div class="buttons">
        <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
      </div>
    </div>
    <div id="tab-services" class="tab-content"><?php echo $services; ?></div>
    <h2 class="slider_tit">Рекомендуемые товары</h2>
    <div class="recommend">
      <ul class="slides">
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured1.png" alt="featured1" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured2.png" alt="featured32" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured3.png" alt="featured3" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured1.png" alt="featured1" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured2.png" alt="featured32" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured3.png" alt="featured3" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured1.png" alt="featured1" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured2.png" alt="featured32" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured3.png" alt="featured3" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured1.png" alt="featured1" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured2.png" alt="featured32" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured3.png" alt="featured3" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured1.png" alt="featured1" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured2.png" alt="featured32" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
        <li>
          <a href="#">
            <div class="for_img">
              <img src="/catalog/view/theme/zarit/img/featured3.png" alt="featured3" />
            </div>
            <input type="button" value="В корзину" class="add_to_Cart" />
          </a>
        </li>
      </ul>
    </div><!-- flexslider -->
  </div><!-- wrap -->
  <div class="send">
    <div class="wrap">
      <h5>Города и их области в которые регулярно происходят отправки:</h5>
      <?php echo $deliv_cities; ?>
    </div>
  </div>



<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
    dataType: 'json',
    success: function(json) {
      $('.success, .warning, .attention, information, .error').remove();
      
      if (json['error']) {
        if (json['error']['option']) {
          for (i in json['error']['option']) {
            $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
          }
        }
      } 
      
      if (json['success']) {
        $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
          
        $('.success').fadeIn('slow');
          
        $('#cart-total').html(json['total']);
        
        $('html, body').animate({ scrollTop: 0 }, 'slow'); 
      } 
    }
  });
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
  action: 'index.php?route=product/product/upload',
  name: 'file',
  autoSubmit: true,
  responseType: 'json',
  onSubmit: function(file, extension) {
    $('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
    $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
  },
  onComplete: function(file, json) {
    $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
    
    $('.error').remove();
    
    if (json['success']) {
      alert(json['success']);
      
      $('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
    }
    
    if (json['error']) {
      $('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
    }
    
    $('.loading').remove(); 
  }
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').on('click', function() {
  $('#review').fadeOut('slow');
    
  $('#review').load(this.href);
  
  $('#review').fadeIn('slow');
  
  return false;
});     

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
    beforeSend: function() {
      $('.success, .warning').remove();
      $('#button-review').attr('disabled', true);
      $('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
    },
    complete: function() {
      $('#button-review').attr('disabled', false);
      $('.attention').remove();
    },
    success: function(data) {
      if (data['error']) {
        $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
      }
      
      if (data['success']) {
        $('#review-title').after('<div class="success">' + data['success'] + '</div>');
                
        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').attr('checked', '');
        $('input[name=\'captcha\']').val('');
      }
    }
  });
});
//--></script> 

<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
$('#tabs a').tabs();
  
  $('.date').datepicker({dateFormat: 'yy-mm-dd'});
  $('.datetime').datetimepicker({
    dateFormat: 'yy-mm-dd',
    timeFormat: 'h:m'
  });
  $('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 

<?php echo $footer; ?>
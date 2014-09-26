<?php echo $header; ?>

 

    <div class="wrap">
    <div class="content_nav">
      <div class="breadcrumb">
        <?php $breadLength = count($breadcrumbs) - 1; ?>
        <?php foreach ($breadcrumbs as $k => $breadcrumb) { ?>
          <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php if($k != $breadLength) echo $breadcrumb['separator'];?>
        <?php } ?>
      </div>
      <ul class="limit">
        <li>На странице:</li>
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <li><a href="<?php echo $limits['href']; ?>" class="active"><?php echo $limits['text']; ?></a></li>
        <?php } else { ?>
        <li><a href="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <div class="sort">
        <label>Сортировка по:</label>
        <select onchange="location = this.value;">
          <?php foreach ($sorts as $sorts) { ?>
          <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
    </div><!-- content_nav -->
    <h3 class="orange">Товары категории «<?php echo $heading_title; ?>»</h3>
    <ul class="category">

    <?php foreach ($products as $product) { ?>
    <li>

      <div class="goods_img">
          <div><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="magnify" style="width:152px; height:137px;" data-magnifyby="4" /></div>
          <ul class="rating_m popularity2">
            <li class="star1"></li>
            <li class="star2"></li>
            <li class="star3"></li>
            <li class="star4"></li>
            <li class="star5"></li>
          </ul>
        </div>
        <div class="goods_name">
          <h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
          <dl>
            <dt>Модель:</dt>
            <dd>F3206 2 Megapixel Compact IP camera</dd>
            <dt>Тип оборудования:</dt>
            <dd>Цветная IP-камера, Мегапиксельная IP-камера, Цветная IP-камера</dd>
            <dt>Описание:</dt>
            <dd>Цифровая камера видеонаблюдения, цифровая камера видеонаблюдения</dd>
            <dt>Области применения:</dt>
            <dd>Для монтажа внутри помещения</dd>
            <dt>Цвета, использованные в оформлении:</dt>
            <dd>Белый</dd>
          </dl>
        </div>
        <div class="goods_price">
          <strong><?php echo $product['price']; ?> <span><?php echo $product['price_symbol_right']; ?></span></strong>
          <input type="button" value="В корзину" class="add_cart" id="<?php echo $product['product_id']; ?>">
        </div>
      </li>
      <?php } ?>
    </ul>

    <div class="pagination">
    
      <?php echo $pagination; ?>
    </div>
    <?php if (!$categories && !$products) { ?>
    <div class="content"><?php echo $text_empty; ?></div>
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
    <?php } ?>
  </div><!-- wrap -->

<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		
	}
}


//--></script> 
<?php echo $footer; ?>
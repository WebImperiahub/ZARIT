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
    <div id="tab-reviews" class="tab-content"><?php echo $reviews; ?></div>
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
<?php echo $footer; ?>
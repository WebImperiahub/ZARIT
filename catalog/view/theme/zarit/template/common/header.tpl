<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
  <base href="<?php echo $base; ?>" />
  
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?> 


  <link rel="stylesheet" href="/catalog/view/theme/zarit/stylesheet/style.css" type="text/css" media="screen, projection">
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/jquery.magnifier.js"></script>
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/jquery.flexslider-min.js"></script>
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/jquery.formstyler.min.js"></script>
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/main.js"></script>




  <!--[if IE 7]> 
  <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/stylesheet/ie7.css" />
  <![endif]-->
  <!--[if lt IE 7]>
  <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/stylesheet/ie6.css" />
  <script type="text/javascript" src="/catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
  <script type="text/javascript">
  DD_belatedPNG.fix('#logo img');
  </script>
  <![endif]-->

</head>
<body>
  <div id="header" class="wrap">
    <div id="logo"><a href="#"><img src="/catalog/view/theme/zarit/img/logo.png"</a></div>
    <div class="links">
      <ul>
        <li><a href="<?=$head_links['about']['url']?>"><?=$head_links['about']['title']?></a></li>
        <li><a href="<?=$head_links['deliv']['url']?>"><?=$head_links['deliv']['title']?></a></li>
        <li><a href="<?=$head_links['contact']['url']?>"><?=$head_links['contact']['title']?></a></li>
        <li><a href="<?=$head_links['help']['url']?>"><?=$head_links['help']['title']?></a></li>
      </ul>
      <div id="welcome">
         <?php if (!$logged) { ?>
        <?php echo $text_welcome; ?>
        <?php } else { ?>
        <?php echo $text_logged; ?>
        <?php } ?>
      </div>
    </div><!-- links -->
    <a href="#" id="cart">Товаров в корзине:<span id="cart-total">0 (0 руб)</span></a>
    <div class="info_block">
      <div>
        <span class="tel">+7 (908)<span> 782 95 15</span>|</span>
        <span class="call_back">CallBack</span>
      </div>
      <div id="search">
        <input type="text" name="search" />
        <div class="button-search">Поиск</div>
      </div>
    </div><!-- info_block -->
  </div><!-- header -->
  <div class="menu menu_top">
    <ul>
      <li>
        <a href="#">IP-видеонаблюдение</a>
        <div class="cctv">
          <div>
            <h5>IP-камеры</h5>
            <ul>
              <li><a href="#">Hikvision</a></li>
              <li><a href="#">Dahua</a></li>
            </ul>
          </div>
          <div>
            <h5>Видеорегистраторы (NVR)</h5>
            <ul>
              <li><a href="#">Hikvision</a></li>
              <li><a href="#">Dahua</a></li>
              <li><a href="#">Macroscop</a></li>
            </ul>
          </div>
          <div>
            <h5>Программное обеспечение</h5>
            <ul>
              <li><a href="#">Macroscop</a></li>
              <li><a href="#">Hikvision iVMS-4200</a></li>
              <li><a href="#">Dahua NRV Client</a></li>
            </ul>
          </div>
        </div><!-- cctv -->
      </li>
      <li>
        <a href="#">Системы контроля и управления доступом</a>
        <div class="" style="left: -238px;"></div><!-- -->
      </li>
      <li>
        <a href="#">Аксессуары</a>
        <div class="" style="left: -673px;"></div><!-- -->
      </li>
      <li>
        <a href="#">услуги</a>
        <div class="" style="right: -1px;"></div><!-- -->
      </li>
    </ul>
  </div><!-- menu -->

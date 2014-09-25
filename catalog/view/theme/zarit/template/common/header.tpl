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
  <link rel="stylesheet" href="/catalog/view/theme/zarit/stylesheet/responsive.css" type="text/css" media="screen, projection">
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="/catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/jquery.magnifier.js"></script>
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/jquery.flexslider-min.js"></script>
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/jquery.formstyler.min.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
  <script type="text/javascript" src="/catalog/view/theme/zarit/js/main.js"></script>
  <script type="text/javascript" src="/catalog/view/javascript/jquery/tabs.js"></script>




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
    <div id="logo"><a href="/"><img src="/catalog/view/theme/zarit/img/logo.png"></a></div>
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
    <a href="#" id="cart"><span>Товаров в корзине: </span><span>0</span><span> (0 руб)</span></a>
    <div class="info_block">
      <div class="phone">
        <span class="tel"><?php echo $phone['first']; ?><span> <?php echo $phone['last']; ?></span>|</span>
        <span class="call_back">CallBack</span>
      </div>
       
      <div id="search">
        <a href="#"></a>
        <div>
          <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
          <div class="button-search">Поиск</div>
        </div>
      </div>
    </div><!-- info_block -->
  </div><!-- header -->
  <div class="menu menu_top">
 <?php echo $menu; ?>
  </div><!-- menu -->

<?php echo $header; ?>

<div id="content">
    <div class="content_nav">
      <div class="breadcrumb">
      <?php $breadLen = count($breadcrumbs) - 1; ?>
         <?php foreach ($breadcrumbs as $k => $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; if($breadLen != $k) {?> <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php } else { echo '<span>'.$breadcrumb['text'].'</span>';} ?>
      <?php } ?> 
      </div>
    </div><!-- content_nav -->
    <?php echo $description; ?>
  </div><!-- wrap -->
<?php echo $footer; ?>
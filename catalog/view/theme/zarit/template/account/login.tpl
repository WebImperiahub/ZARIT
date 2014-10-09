<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="wrap" class="wrap">
  <div class="content_nav">
    <div class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><?php echo $breadcrumb['separator']; ?>
    <?php } ?>
    </div>
  </div>
  <div class="sing-in">
      <div>
        <h3><?php echo $text_new_customer; ?></h3>
        <strong>Регистрация учетной записи</strong>
        <p><?php echo $text_register_account; ?></p>
        <a class="checkout button" href="<?php echo $register; ?>">ЗАРЕГИСТРИРОВАТЬСЯ</a>
      </div>
      <div>
        <h3><?php echo $text_returning_customer; ?></h3>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <div>
            <p><?php echo $entry_email; ?></p>
            <input type="text">
          </div>
          <div>
            <p><?php echo $entry_password; ?></p>
            <input type="password">
            <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
          </div>
          <input type="submit" value="<?php echo $button_login; ?>" class="button checkout" />
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </form>
      </div>
    </div>
</div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>
<?php echo $header; ?>
<div class="wrap">
	<?php foreach($products as $productDetail) { ?>
	<h3><a href="<?php echo $productDetail['url']; ?>"><?php echo $productDetail['title']; ?></a></h3>
	<?php unset($productDetail['title'], $productDetail['url'], $productDetail['sort']);?>
	<div class="flexslider">
		<ul class="slides">
		<?php foreach($productDetail as $product) {?>
			<li>
				<a href="<?php echo $product['href'];?>">
					<div class="for_img">
						<img src="<?php echo $product['thumb'];?>" alt="camcorder1" />
					</div>
					<span><?php echo $product['name'];?></span>
				</a>
			</li>			
		<?php } ?>
		</ul>
	</div><!-- flexslider -->
	<?php } ?>	
</div><!-- wrap -->
<div class="notes">
	<div class="wrap">
		<?php echo html_entity_decode($information_info['description']); ?>
	</div>
</div>
<?php echo $footer; ?>
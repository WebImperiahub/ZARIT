<?php echo $header; ?>
<div class="wrap">
	<?php foreach($products as $productDetail) { ?>
	<h3><a href="<?php echo $productDetail['url']; ?>"><?php echo $productDetail['title']; ?></a></h3>
	<?php unset($productDetail['title'], $productDetail['url']);?>
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
		<h5>Интернет-магазин все для видеонаблюдения</h5>
		<p>Если Вы ищете, где можно купить модную женскую одежду по оптовым ценам от производителя, то интернет-магазин VisionFS.ru — это именно то, что Вам нужно! Наш магазин женской одежды (Москва, Россия) предлагает Вашему вниманию самые актуальные и трендовые модели женского гардероба: элегантные женские костюмы,вечерние платья, модные брюки и шорты,  женские блузки и рубашки, стильные жакеты, современные юбки, и многое другое…
Практически весь ассортимент современной женской одежды Вы сможете найти в нашем интернет-магазине.</p>
		<p>На нашем сайте для удобства покупателей одежда представлена по коллекциям: коллекция модной женской одежды весна-лето 2014 года, коллекция модной женской одежды осень-зима 2013 и 2014 годов, коллекция модной женской одежды весна-лето 2013 года.
Мы упрощаем процесс покупки и экономим Ваши время и деньги, так как продаем женские вещи только по лучшей оптовой цене от производителя, без каких-либо розничных наценок. Пусть наш интернет-магазин модной одежды не самый крупный в сети интернет, но зато мы знаем толк в модных и качественных вещах. Мы рады видеть на нашем сайте всех, кто неравнодушен к выгодному и удобному интернет-шоппингу.</p>
		<p>Vision Fashion Store предоставляет вещи для оптовых заказчиков и организаторов совместных покупок. Одним словом, мы создаем комфортные условия для всех уверенных и современных людей, готовых идти в ногу со временем и желающих приобрести женскую одежду оптом.
Доставка товара осуществляется в любые населенные пункты России почтой России и транспортными компаниями. Становитесь клиентами модного интернет-магазина женской одежды Vision Fashion Store и Вам не захочется с нами расставаться!</p>
	</div>
</div>
<?php echo $footer; ?>
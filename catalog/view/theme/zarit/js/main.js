$(document).ready(function(){
	//slider
	$.fn.exists = function(){return this.length>0;}
	if ($('.flexslider').exists()) {
		$('.flexslider').flexslider({
			animation: "slide",
			itemWidth: 154,
			itemMargin: 21,
			slideshow: false,
			move: 1
		});
	}
	if ($('.recommend').exists()) {
		$('.recommend').flexslider({
			animation: "slide",
			itemWidth: 158,
			itemMargin: 17,
			minItems: 1,
			maxItems: 5
		});
	}

	$('input:not([name="rating"]), select').styler();

	$('#tabs a').tabs();

	$('.add_cart').on('click', function(e) {
		e.preventDefault();
		addToCart($(this).attr('id'));
	});

	// setTimeout(correctManuSpace, 500); // correcting menu
});// ready


function correctManuSpace() {
	var firstOffset = false;

	$('.menu>ul>li').each(function(i, el) {
		if (firstOffset === false) {

			firstOffset = $(el).offset().left;
		} else {

			var elOffset = $(el).offset().left;
			// console.log(elOffset);
			var diffOffs = firstOffset - elOffset;
			var $cctv = $(el).find('.cctv');
			// console.log(diffOffs + '  ' + elOffset, el);
			if(firstOffset != elOffset && !isNaN(diffOffs)) {
				$cctv.css('left', diffOffs + 'px');
			}
		}
	});
}
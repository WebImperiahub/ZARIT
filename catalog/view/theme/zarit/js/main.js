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
			itemMargin: 17
		});
	}
	 
	 // if ($('input, select').exists()) {
	// (function($) {
		// $(function() {
		// 
	$('input:not([name="rating"]), select').styler();
		// 
		// });
	// })(jQuery);
	// }
	$('#tabs a').tabs();
});// ready
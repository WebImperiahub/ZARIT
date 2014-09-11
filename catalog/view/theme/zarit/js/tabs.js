$(document).ready(function(){

		var content = $('ul.tabs_content li'),
		buttons = $('ul.tabs_link li');
			
	var lastActive = restore() || 0;
			
	setTabActive(lastActive);
		
	function restore(){
		var index = localStorage ? localStorage.getItem('current_tab') : 0;
		return index;
	}
	
	function save(index){
		if (!localStorage) {
			return false;
		}
		localStorage.setItem('current_tab', index);
	}
	
	function setTabActive(index){
		//arguments.length
							
		if (typeof +index != 'number') {
			return false;
		}
		
		buttons.removeClass('active');
		buttons.eq(index).addClass('active');
		
		content.hide();
		content.eq(index).show();
		
		save(index);		
	}
				
	buttons.click(function(){
		var current = $(this).index();
		setTabActive(current);					
	});
});//(jQuery)
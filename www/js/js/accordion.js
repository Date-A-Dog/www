$(function(){
	$('.accordion-container').each(function(){
	  var thead = $(this).find('thead');
	  var tbody = $(this).find('tbody');
	  
	  tbody.hide();
	  thead.click(function(){
		$(this).parent().siblings().find('tbody').slideUp();
		tbody.slideToggle();
		
	  })
	})
});


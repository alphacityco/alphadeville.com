
$(document).ready(function() {
  $(window).load(function(){
    $('.doc-loader').fadeOut('slow');
  });
	
  $('.gallery').code4netslideshow({
    'navigation' : [
      {
        'id' : 'gallery-nav',
        'type' : 'bullet'           //bullet/arrow
      }
    ],
    'slideInterval' : 5,
    'pauseInterval' : 10, 
    'type' : 'horizontal',
    'autoSlide' : true
  });
	
	$('.navigation li a').hover(  
		function() {  
			$(this).stop().animate({'paddingLeft': '1.2em', 'paddingRight': '1.2em'}, 'fast');  
		},  
		function() {
			$(this).stop().animate({'paddingLeft': '0.5em', 'paddingRight': '0.5em'}, 'fast');  
		}
	);	
	
});

/* Author: 

*/
$(function(){
	$('.charity').hover(
		function(e){ $(this).find('.summary:hidden').fadeIn()},	
		function(e){ $(this).find('.summary:visible').fadeOut()}
	)
})
	
















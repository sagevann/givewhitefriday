/* Author: 

*/
$(function(){
    var to = undefined
	$('.charity').mouseover(function(e){
		var $s = $(this).find('.summary').fadeIn()
		e.stopPropagation()
	})
	
	$('.summary').mouseout(function(e){
		var $s= $(this)
		  fade_out = function(){ $s.fadeOut() }
		setTimeout(fade_out, 100)
		e.stopPropagation()
	})
})
	
















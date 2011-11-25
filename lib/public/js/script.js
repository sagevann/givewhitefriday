/* Author: 

*/
$(function(){
	
	$('.charity').mouseover( function(){
		var s = '#' +$(this).attr('id') + ' .summary'
	
	  	$( s).fadeIn()
		$(s).mouseout( function(){
		
		  $( this).fadeOut()
		})
	
	})
	
	
	
})
	
















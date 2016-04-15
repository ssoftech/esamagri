/**
 * @author RAJ
 */
$(document).ready(function(){
				
					// hide #back-top first
					$("#back-top").hide();
					
					// fade in #back-top
					$(function () {
						$(window).scroll(function () {
							if ($(this).scrollTop() > 100) {
								$('#back-top').fadeIn();
							} else {
								$('#back-top').fadeOut();
							}
						});
				
						// scroll body to 0px on click
						$('#back-top a').click(function () {
							$('body,html').animate({
								scrollTop: 0
							}, 800);
							return false;
						});
					});
				
				});

function sticky_relocate() {
    var window_top = $(window).scrollTop();
    var div_top = $('#sticky-anchor').offset().top;
    if (window_top > div_top) {
        $('#sticky').addClass('stick');
    } else {
        $('#sticky').removeClass('stick');
    }
}

$(function () {
    $(window).scroll(sticky_relocate);
    sticky_relocate();
});



    $(document).ready(function() {
     
    $("#owl-demo").owlCarousel({
     
    autoPlay: 3000, //Set AutoPlay to 3 seconds
     
    items : 9,
    itemsDesktop : [1199,4],
    itemsDesktopSmall : [979,4]
     
    });
     
    });

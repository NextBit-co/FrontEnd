(function ($) {
	"use strict";

	var swiper = new Swiper(".xhub-post-carousel", {
        slidesPerView: 4,
        spaceBetween: 30,
        loop: true,
        autoplay: true,
        freeMode: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
		breakpoints: {
			0: {
			  slidesPerView: 1,
			  spaceBetween: 0,
			},
			768: {
			  slidesPerView: 2,
			  spaceBetween: 20,
			},
			992: {
			  slidesPerView: 3,
			  spaceBetween: 30,
			}
		  },
      });

	$(window).load(function() {
      var menu      =  $('#xhub-menu');
        menu.slicknav({
        	'allowParentLinks': true,
        	'nestedParentLinks': false,
			'closeOnClick': true,
			'closedSymbol': '&#9658;', // Character after collapsed parents.
			'openedSymbol': '&#9660;', // Character after expanded parents.
        });
	
	$(document).on("click", "#menu-close", function(e) {
		e.preventDefault();
		$(".slicknav_nav").addClass('slicknav_hidden mhide');
	  });
	
		$(".slicknav_menu .slicknav_nav").append('<a id="menu-close" class="slicknav_arrow xhub-carrow" href="#menuclose"><i class="fas fa-times"></a></i>');

});
	
    //document ready function
    jQuery(document).ready(function($){
		$('.xhub-post-carousel .post-item').removeClass('unload');

		$('.header-top-search i').on('click', function(){
			$('.header-top-search form').toggleClass('sbar-show');
	 
		 });
	 
		 $('#masthead').on('click', function(){
			$('.header-top-search form').removeClass('sbar-show');
		 });
		
		$('body').on("click", function() {
			$(".slicknav_nav").removeClass('mhide');
		  });

		 $("#xhub-menu").xhubAccessibleDropDown();

        }); // end document ready
		
    	

    	    $.fn.xhubAccessibleDropDown = function () {
			    var el = $(this);

			    /* Make dropdown menus keyboard accessible */

			    $("a", el).focus(function() {
			        $(this).parents("li").addClass("hover");
			    }).blur(function() {
			        $(this).parents("li").removeClass("hover");
			    });
			}

}(jQuery));	
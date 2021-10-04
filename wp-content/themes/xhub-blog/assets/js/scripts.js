(function ($) {
	"use strict";

	var swiper = new Swiper(".xhubblog-post-carousel", {
        slidesPerView: 3,
        spaceBetween: 0,
        centeredSlides: true,
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
			  spaceBetween: 0,
			}
		  },
      });
    jQuery(document).ready(function($){
		$('.xhubblog-post-carousel .post-item').removeClass('unload');

    });

}(jQuery));	
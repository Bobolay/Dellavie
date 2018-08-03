$('.goode1-slider-for').slick({
 slidesToShow: 1,
 slidesToScroll: 1,
 arrows: false,
 fade: true,
 asNavFor: '.goode1-slider-nav'
});
$('.goode1-slider-nav').slick({
 slidesToShow: 1,
 slidesToScroll: 1,
 asNavFor: '.goode1-slider-for',
 arrows: false,
 // dots: true,
 // infinite: true,
 // speed: 500,
 // fade: true,
 // autoplay: false,
 // autoplaySpeed: 2000,
 // nextArrow: false,
 // prevArrow: false,
 // cssEase: 'linear'
 // nextArrow: $('.mainlidet1').find('.next-btn'),
 // prevArrow: $('.mainlidet1').find('.prev-btn')
});

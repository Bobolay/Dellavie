$('.goode1-slider-for').slick({
 slidesToShow: 1,
 slidesToScroll: 1,
 arrows: true,
 fade: true,
 asNavFor: '.goode1-slider-nav'
});
$('.goode1-slider-nav').slick({
 slidesToShow: 1,
 slidesToScroll: 1,
 asNavFor: '.goode1-slider-for',
 arrows: false,
 arrows: true,
 dots: true,
 autoplay: false,
 autoplaySpeed: 3000,
 pauseOnHover:false,
 nextArrow: $('.goode').find('.next-btn'),
 prevArrow: $('.goode').find('.prev-btn')
});




$('.goode12-slider-for').slick({
 slidesToShow: 1,
 slidesToScroll: 1,
 arrows: false,
 fade: true,
 asNavFor: '.goode1-slider-nav'
});
$('.goode12-slider-nav').slick({
 slidesToShow: 1,
 slidesToScroll: 1,
 asNavFor: '.goode1-slider-for',
 arrows: false,
 dots: true,
 // infinite: true,
 // speed: 500,
 // fade: true,
 arrows: true,
 autoplay: true,
 autoplaySpeed: 3000,
 pauseOnHover:false,
 // nextArrow: false,
 // prevArrow: false,
 // cssEase: 'linear'
 nextArrow: $('.slider-smolle').find('.next-btn2'),
 prevArrow: $('.slider-smolle').find('.prev-btn2')
});

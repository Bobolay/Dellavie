$("body").on "click", ".info-on-banner ul li", ()->
    $button = $(this)
    $(this).parent().children().removeClass('active')
    $(this).addClass('active')
    index = $button.index()
    change_slide(index)

change_slide = (index)->
    $(".info-container").children().removeClass("visible")
    setTimeout(
        ()->
            $(".info-container .text#{index + 1}").addClass("visible")
        300
    )

$(document).ready ->
  slider1 = $('.slider-1').bxSlider
    pagerCustom: '#bx-pager'
    controls: false
    hideControlOnEnd: true
    speed: 700
    pause: 9000
    auto: true
    easing: 'swing'
    infiniteLoop: true
    onSlideBefore: (element, oldIndex, newIndex)->
      change_slide(newIndex)
  $('.slider-prev').click ->
    current = slider1.getCurrentSlide()
    slider1.goToPrevSlide(current)
  $('.slider-next').click ->
    current = slider1.getCurrentSlide()
    slider1.goToNextSlide(current)

  slider2 = $('.slider-2').bxSlider
    pagerCustom: '#bx-pager'
    controls: false
    hideControlOnEnd: true
    speed: 700
    pause: 9000
    auto: true
    easing: 'swing'
    infiniteLoop: true
    mode: 'fade'
    onSlideBefore: (element, oldIndex, newIndex)->
      change_slide(newIndex)
  $('.slider-prev').click ->
    current = slider2.getCurrentSlide()
    slider2.goToPrevSlide(current)
  $('.slider-next').click ->
    current = slider2.getCurrentSlide()
    slider2.goToNextSlide(current)
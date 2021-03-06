$(document).ready ->

  $popup_dark_bg = $('.popup-dark-background')
  $popup_white_bg = $('.popup-white-background')

  $popup = $('.coffee-sort-popup')
  $close = $('.close-popup')

  $('.country').on 'click', ->
    $index = $(this).index()
    $container = $(this).closest('.united')

    $popup = $container.find(".coffee-sort-popup")
    $popup_dark_bg = $container.find(".popup-dark-background")
    $popup_white_bg = $container.find(".popup-white-background")


    setTimeout (->
      $popup_dark_bg.addClass('visible')
    ), 0
    setTimeout (->
      $popup_white_bg.addClass('visible')
    ), 250
    setTimeout (->
      $popup.eq($index).addClass('visible')
    ), 255

  $arrow_left = $('.coffee-sort-popup .left-arrow-container')
  $arrow_right = $('.coffee-sort-popup .right-arrow-container')







  $arrow_left.on 'click', ->
    $container = $(this).closest('.popup-container')
    $active_popup = $container.find('.coffee-sort-popup.visible')
    $popup_index = $active_popup.index()
    if $popup_index == 0
      $next_popup = $container.find('.coffee-sort-popup').eq(2)
    else
      $next_popup = $active_popup.first().prev()
    setTimeout (->
      $('.coffee-sort-popup.visible').removeClass('visible')
    ), 1
    setTimeout (->
      $next_popup.addClass('visible')
    ), 102

  $arrow_right.on 'click', ->
    $container = $(this).closest('.popup-container')
    $active_popup = $container.find('.coffee-sort-popup.visible')
    $popup_index = $active_popup.index()
    if $popup_index == 2
      $next_popup = $container.find('.coffee-sort-popup').eq(0)
    else
      $next_popup = $active_popup.first().next()
    setTimeout (->
      $('.coffee-sort-popup.visible').removeClass('visible')
    ), 1
    setTimeout (->
      $next_popup.addClass('visible')
    ), 102



  $close.on 'click', ()->
    $popup_dark_bg.removeClass('visible')
    $popup_white_bg.removeClass('visible')
    $popup.removeClass('visible')

  $.clickOut(".coffee-sort-popup",
    ()->
      $popup_dark_bg.removeClass('visible')
      $popup_white_bg.removeClass('visible')
      $popup.removeClass('visible')
    {except: ".coffee-sort-popup"}
  )

  $('.close-form-message').on 'click', ()->
    $(".form-message-background").fadeOut()

  $.clickOut(".form-message",
    ()->
      $(".form-message-background").fadeOut()
    {except: ".form-message"}
  )

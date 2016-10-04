$(document).ready ->
  
  $popup_dark_bg = $('.popup-dark-background')
  $popup_white_bg = $('.popup-white-background')
  
  $popup = $('.coffee-sort-popup')
  $close = $('.close-popup')

  $('.country').on 'click', ->
    $index = $(this).index()
    $container = $(this).closest('.page-section')

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
    $popup_index = $('.coffee-sort-popup.visible').index()
    if $popup_index == 0
      $next_popup = $('.coffee-sort-popup').eq(2)
    else
      $next_popup = $('.coffee-sort-popup.visible').first().prev()
    setTimeout (->
      $('.coffee-sort-popup.visible').removeClass('visible')
    ), 1
    setTimeout (->
      $next_popup.addClass('visible')
    ), 102



  $arrow_right.on 'click', ->
    $popup_index = $('.coffee-sort-popup.visible').index()
    if $popup_index == 2
      $next_popup = $('.coffee-sort-popup').eq(0)
    else
      $next_popup = $('.coffee-sort-popup.visible').first().next()
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
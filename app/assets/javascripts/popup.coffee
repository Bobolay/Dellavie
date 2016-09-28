# $border = $frame.find('.top-border')

$(document).ready ->
  
  $popup_bg = $('.popup-background')
  
  $popup = $('.coffee-sort-popup')
  $close = $('.close-popup')

  $('.country').on 'click', ->
    $index = $(this).index()
    $container = $(this).closest('.page-section')

    $popup = $container.find(".coffee-sort-popup")
    $popup_bg = $container.find(".popup-background")

    # popup background
    $popup_bg.addClass('display-block')
    setTimeout (->
      $popup_bg.addClass('visible')
    ), 0
    setTimeout (->
      $popup.eq($index).addClass('display-block')
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
    $('.coffee-sort-popup.display-block').removeClass('display-block')
    $('.coffee-sort-popup.visible').removeClass('visible')
    $next_popup.addClass('display-block')
    setTimeout (->
      $next_popup.addClass('visible')
    ), 1

  $arrow_right.on 'click', ->
    $popup_index = $('.coffee-sort-popup.visible').index()
    if $popup_index == 2
      $next_popup = $('.coffee-sort-popup').eq(0)
    else
      $next_popup = $('.coffee-sort-popup.visible').first().next()
    $('.coffee-sort-popup.display-block').removeClass('display-block')
    $('.coffee-sort-popup.visible').removeClass('visible')
    $next_popup.addClass('display-block')
    setTimeout (->
      $next_popup.addClass('visible')
    ), 1






  $close.on 'click', ()->
    $popup_bg.removeClass('display-block')
    $popup_bg.removeClass('visible')
    $popup.removeClass('display-block')
    $popup.removeClass('visible')
    $popup.removeClass('current-popup')

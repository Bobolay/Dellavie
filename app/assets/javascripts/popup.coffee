# $border = $frame.find('.top-border')

$(document).ready ->
  
  $popup_bg = $('.popup-background')
  $popup = $('.coffee-sort-popup')
  $close = $('.close-popup')

  $('.country').on 'click', ()->
    $index = $(this).index()

    $popup_bg.addClass('display-block')
    setTimeout (->
      $popup_bg.addClass('visible')
    ), 0
    
    setTimeout (->
      $popup.addClass('display-block')
    ), 250
    setTimeout (->
      $popup.addClass('visible')
    ), 255
    
  

  $close.on 'click', ()->
    $popup_bg.removeClass('display-block')
    $popup_bg.removeClass('visible')
    $popup.removeClass('display-block')
    $popup.removeClass('visible')
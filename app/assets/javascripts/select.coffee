$(document).ready ->
  $('.select-field').on 'click', ()->
    $('.select-field span').toggleClass('rotate')
    $('.select-block').toggleClass('visible')

  $('.option').on 'click', ()->
    $choosen_text = $(this).text()
    $('.select-field p').text($choosen_text)

  $.clickOut(".select-block",
    ()->
      $(".select-block").removeClass('visible')
      $('.select-field span').removeClass('rotate')
    {except: ".select-field"}
  )
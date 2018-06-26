$(document).on "ready", ->

  $("a[href^='#']").on "click", (e)->
    e.preventDefault()
    $link = $(this)
    href = $link.attr("href")
    target_top = $(href).offset().top
    $("html, body").animate({scrollTop: target_top})

  # $('.logo').on 'click', ->
  #   $('html, body').animate({scrollTop : 0}, 800)
  #   return false


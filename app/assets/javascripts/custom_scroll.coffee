$(document).on "ready", ->

  $(".full-page-container .page-section").first().addClass("active")
  $active_section_index = $(".page-section.active").index()

  $('.go-down').on 'click', ->
    $next_section = $(".page-section").eq(3)
    $(".page-section.active").removeClass("active")
    $next_section.addClass("active")

  $('.square').on 'click', ->
    $index = $(this).index()
    $container = $(this).closest('.page-section')
    $next_section = $(".page-section").eq($index)
    $(".page-section.active").removeClass("active")
    $next_section.addClass("active")

  window.custom_scroll = (direction = "down") ->

    $active_section_index = $(".page-section.active").index()
    $active_section = $(".full-page-container .page-section.active")

    if (direction == "up") && ($active_section_index == 0)
      return

    if direction == "down"
      $next_section = $active_section.first().next()
    else
      $next_section = $active_section.first().prev()

    if (direction == "up") && ($active_section_index == 3)
      # how deep we scrolled in div
      $scrollTop = $(window).scrollTop()
      # div top
      # $elementOffset = $active_section.offset().top
      if $scrollTop > 0
        return
      else

    if $next_section.length > 0
      $active_section.removeClass('active')
      $next_section.addClass('active')

$(document).on "ready", ->
  $(".full-page-container .page-section").first().addClass("active")

scroll = (direction = "down")->
  $active_section = $(".full-page-container .page-section.active")

  if direction == "down"
    $next_section = $active_section.first().next()
  else
    $next_section = $active_section.first().prev()

  if direction == "up" && $active_section.length > 1
    $active_section.last().removeClass("active")
    $next_section = $active_section.first()

  if $next_section.length > 0
    if !$next_section.hasClass("fp-auto-height")
      $active_section.removeClass("active")
    $next_section.addClass("active")


$(document).on "mousewheel", (e)->
  
  delay("scroll",
    ()->
      down = e.deltaY < 0

      active_section_index = $(".page-section.active").index()

      if active_section_index == 1 && down
        scroll("down")
      else
        scroll("up")
    500
    true
    false
  )
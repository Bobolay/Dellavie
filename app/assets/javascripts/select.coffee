init_select = ()->
  $wrap = $(this)
  $select = $wrap.find("select")
  if $select.hasClass("initialized")
    return
  $select.addClass("initialized")
  #$select_arrow = $wrap.find(".select-arrow ")

  selected_option_value = $select.find("option[selected]").attr("value")
  selected_option_name = $select.find("option[selected]").text()
  $selected_option = $("<p class='selected-option' data-option-value='#{selected_option_value}'>#{selected_option_name}</p>")
  $selected_option.insertAfter($select)

  $select_options_container = $("<div class='select-block'></div>")
  $select.find("option").each ()->
    $option = $(this)
    option_value = $option.attr("value")
    option_name = $option.text()
    $select_options_container.append("<div class='option' data-option-value='#{option_value}'>#{option_name}</div>")

  $wrap.append($select_options_container)

submit_form = (e)->
  e.preventDefault()
  $form = $(this)
  data = $form.serializeArray()
  url = $form.attr("action")
  method = $form.attr("method")

  $form.find(".form-message").addClass("show")

  $.ajax(
    type: method
    url: url
    data: data
  )

$(document).ready ->
  $(".select-field").each ()->
    init_select.apply(this)


  $('.select-field').on 'click', ()->
    $('.select-field span').toggleClass('rotate')
    $('.select-block').toggleClass('visible')

  $('.option').on 'click', ()->
    $option = $(this)
    option_name = $option.text()
    option_value = $option.attr("data-option-value")
    $wrap = $option.closest(".select-field")
    $wrap.find('.selected-option').text(option_name)
    $select = $wrap.find("select")

    current_value = $select.val()

    if current_value != option_value
      $select.val(option_value)
      $select.trigger("change")

  $("form").on "submit", submit_form


  $.clickOut(".select-block",
    ()->
      $(".select-block").removeClass('visible')
      $('.select-field span').removeClass('rotate')
    {except: ".select-field"}
  )
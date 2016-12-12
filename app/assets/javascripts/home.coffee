# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



$(document).ready ->
  $('.column-left, .column-right, .column-center').mouseenter(->
    $(this).css 'border-color', '#5ff442'
    return
  ).mouseleave ->
    $(this).css 'border-color', '#d1670e'
    return
  $('.column-left, .column-right, .column-center').click ->
    if !($('.column-left').css('display') == 'none') and !($('.column-right').css('display') == 'none') and !($('.column-center').css('display') == 'none')
      $('.column-left, .column-right, .column-center').not(this).hide()
    else
      $('.column-left, .column-right, .column-center').show()
    return
  return



$(document).on 'turbolinks:load', ->
	$('.column-left, .column-right, .column-center').mouseenter(->
		$(this).css 'border-color', '#5ff442'
		return
	).mouseleave ->
		$(this).css 'border-color', '#d1670e'
		return
	$('.column-left, .column-right, .column-center').click ->
		if !($('.column-left').css('display') == 'none') and !($('.column-right').css('display') == 'none') and !($('.column-center').css('display') == 'none')
			$('.column-left, .column-right, .column-center').not(this).hide()
		else
			$('.column-left, .column-right, .column-center').show()
		return
	return
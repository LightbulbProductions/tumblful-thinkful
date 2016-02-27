# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
makeBig = ->
  $(this).removeClass 'thumbnail'
  $(this).addClass 'large-image'
  return

makeSmall = ->
  $(this).addClass 'thumbnail'
  $(this).removeClass 'large-image'
  return
 $(document).ready ->
  $(document).on 'mouseenter', '.image-link-image', makeBig
  $(document).on 'mouseleave', '.image-link-image', makeSmall
  return
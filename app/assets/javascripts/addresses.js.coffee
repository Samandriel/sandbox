# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("select#address_country").select2
    width: '250px'

$ ->
  $('select#address_country').change (event) ->
    select_wrapper = $('#subregion-field')

    $('select', select_wrapper).attr('disabled', true)

    country = $(this).val()

    url = "/addresses/subregion_options?parent_region=#{country}"
    select_wrapper.load(url)


  $('select#locals').change (event) ->
    $(@).closest('form').submit()

    
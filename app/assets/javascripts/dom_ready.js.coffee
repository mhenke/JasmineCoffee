$ ->
  $('#guitar_year').on 'blur', suggestGuitarInfo

suggestGuitarInfo = ->
  suggestTitle()
  suggestAge()

suggestTitle = ->
  year = $('#guitar_year').val()
  brand = $('#guitar_brand').val()
  title = Guitars.suggestTitle(brand, year)
  $('#guitar_title').val(title)

suggestAge = ->
  year = $('#guitar_year').val()
  age = Guitars.suggestAge(year)
  $('.guitar-age').show().
    find('#age').text(age)


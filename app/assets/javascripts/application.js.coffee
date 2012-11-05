#= require jquery
#= require jquery-ui
#= require jquery_ujs
#= require twitter/bootstrap
#= require cocoon
#= require select2.min
#= require gmaps4rails/gmaps4rails.base
#= require gmaps4rails/gmaps4rails.googlemaps

# Remove Facebook #_=_ from auth redirect
if window.location.hash is "#_=_"
  window.location.hash = "" # for older browsers, leaves a # behind
  history.pushState "", document.title, window.location.pathname # nice and clean
  e.preventDefault() # no page reload

# Datepicker for dates
# $("input.date_picker").datepicker

$("input.date_picker").each (i) ->
  $(this).datepicker
    altFormat: "yy- mm-dd"
    dateFormat: "mm-dd-yy"
    altField: $(this).next()

$("#person_company_ids").select2 placeholder: "Selecteer een bedrijf"
$("#person_initiative_ids").select2 placeholder: "Selecteer een initiatief"
$("#initiative_person_ids").select2 placeholder: "Selecteer een persoon"
$("#company_person_ids").select2 placeholder: "Selecteer een persoon"




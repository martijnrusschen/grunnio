#= require jquery
#= require jquery-ui
#= require jquery_ujs
#= require twitter/bootstrap
#= require cocoon
#= require select2.min
#= datepicker_input

# Remove Facebook #_=_ from auth redirect
if window.location.hash is "#_=_"
  window.location.hash = "" # for older browsers, leaves a # behind
  history.pushState "", document.title, window.location.pathname # nice and clean
  e.preventDefault() # no page reload

# Datepicker for dates
$("input.date_picker").datepicker();

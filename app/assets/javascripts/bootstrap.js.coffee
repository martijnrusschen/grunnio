jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  window.setTimeout (->
    $(".alert-info").fadeTo(500, 0).slideUp 500, ->
      $(this).remove()
  ), 2000

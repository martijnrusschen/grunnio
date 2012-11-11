pii = $("#person_initiative_ids")

$('#new_initiative').validate()

$("#initiativeModal").trigger "reveal:close"
$("#new_initiative")[0].reset()
pii.append $("<option></option>").val('<%= @initiative.id %>').html('<%= @initiative.name %>')
values = pii.select2 "val"
values.push '<%= @initiative.id %>'
pii.select2 "val",
  values


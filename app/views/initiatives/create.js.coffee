$("#initiativeModal").trigger "reveal:close"
$("#new_initiative")[0].reset()
$("#person_initiative_ids").append $("<option></option>").val('<%= @initiative.id %>').html('<%= @initiative.name %>')
values = $("#person_initiative_ids").select2 "val"
values.push '<%= @initiative.id %>'
$("#person_initiative_ids").select2 "val",
  values


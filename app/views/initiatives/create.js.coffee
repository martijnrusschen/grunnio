$("#myModal").trigger "reveal:close"
$("#new_initiative")[0].reset()
$("#company_person_ids").append $("<option></option>").val('<%= @initiative.id %>').html('<%= @initiative.name %>')
values = $("#company_person_ids").select2 "val"
values.push '<%= @initiative.id %>'
$("#company_person_ids").select2 "val",
  values


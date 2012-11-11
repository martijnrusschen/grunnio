$('#new_company').validate()

pci = $("#person_company_ids")

$("#companyModal").trigger "reveal:close"
$("#new_company")[0].reset()
pci.append $("<option></option>").val('<%= @company.id %>').html('<%= @company.name %>')
values = pci.select2 "val"
values.push '<%= @company.id %>'
pci.select2 "val",
  values

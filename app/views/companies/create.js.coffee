'<% if @company.errors.any? %>'
'<% @company.errors.full_messages.each do |error| %>'
errors = $('<ul />');
errors.append('<li><%= j( error ) %></li>');
$("#new_company").find('.errors').html(errors);
'<% end %>'
'<% else %>'
$('#new_company').validate()
$("#companyModal").trigger "reveal:close"
$("#new_company")[0].reset()
$("#person_companies_ids").append $("<option></option>").val('<%= @company.id %>').html('<%= @company.name %>')
values = $("#person_companies_ids").select2 "val"
values.push '<%= @company.id %>'
$("#person_companies_ids").select2 "val",
  values
'<% end %>'



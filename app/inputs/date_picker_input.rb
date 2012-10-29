# class DatepickerInput < SimpleForm::Inputs::Base
#   def input
#     @builder.text_field(attribute_name, input_html_options) + \
#     @builder.hidden_field(attribute_name, { :class => attribute_name.to_s + "-alt"})
#   end
# end

# http://stackoverflow.com/a/10504204/545017

class DatePickerInput < SimpleForm::Inputs::StringInput
  def input
    value = object.send(attribute_name) if object.respond_to? attribute_name
    input_html_options[:value] ||= I18n.localize(value) if value.present?
    input_html_classes << "datepicker"

    super # leave StringInput do the real rendering
  end
end

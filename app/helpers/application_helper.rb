module ApplicationHelper
  # Helper for .current navigation
  # http://stackoverflow.com/a/7756320/545017

  def nav_to(link_text, link_path)
    class_name = current_page?(link_path) ? 'current' : nil

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

  def dash(field)
    field.blank? ? "-" : field
  end

  def name_link_list(collection)
    collection.empty? ? "-" : raw(collection.collect{ |c| link_to(c.name, c) }.to_sentence)
  end

  def formatted_addres(location)
    if location && location.address.present?
      raw(location.address.try(:gsub, ",", "<br>"))
    else
    "-"
    end
  end
end

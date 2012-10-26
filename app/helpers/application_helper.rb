module ApplicationHelper
  # Helper for .current navigation
  # http://stackoverflow.com/a/7756320/545017

  def nav_to(link_text, link_path)
    class_name = current_page?(link_path) ? 'current' : nil

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end
end

module ApplicationHelper
  def generate_pretty_list(tag_array)
    tag_list_elements = tag_array.sort.map { |tag_name| tag.li tag_name }
    content_tag(:ul, tag_list_elements.join(" ").html_safe)
  end
end

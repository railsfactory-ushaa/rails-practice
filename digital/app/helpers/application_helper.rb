module ApplicationHelper

def options_for_select_with_style( container, selected=nil )
    container = container.to_a if Hash === container
    options_for_select = container.inject([]) do |options, element|
      text, value = option_text_and_value(element)
      selected_attribute = ' selected="selected"' if option_value_selected?(value, selected)
      style = " style=\"#{element[1]}\"" if element[1] && element[1]!=value
      options << %(<option value="#{html_escape(value.to_s)}"#{selected_attribute}#{style}>#{html_escape(text.to_s)}</option>)
    end
    options_for_select.join("\n")
  end
end

class BooleanInput < Formtastic::Inputs::BooleanInput
  include FormtasticInputDefaults
  
  def to_html
    default_wrapper(:hide_label => true) do
      hidden_field_html <<
      template.content_tag(:ul, :class => 'inputs-list') do
        template.content_tag(:li, label_with_nested_checkbox)
      end
    end
  end
  
  def label_text_with_embedded_checkbox
    check_box_html << " " << template.content_tag(:span, label_text)
  end
  
  def label_html_options
    {}
  end  
end

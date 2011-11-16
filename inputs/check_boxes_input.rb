class CheckBoxesInput < Formtastic::Inputs::CheckBoxesInput
  include FormtasticInputDefaults
  
  def to_html
    default_wrapper do
      choices_wrapping do
        legend_html <<
        hidden_field_for_all <<
        choices_group_wrapping do
          collection.map { |choice|
            choice_wrapping(choice_wrapping_html_options(choice)) do
              choice_html(choice)
            end
          }.join("\n").html_safe
        end
      end
    end
  end
  
  def choice_label(choice)
    choice = choice.is_a?(Array) ? choice.first : choice
    (' ' << template.content_tag(:span, choice)).html_safe
  end
    
  def choices_group_wrapping_html_options
    opts = super
    opts[:class] << ' inputs-list'
    opts
  end
end

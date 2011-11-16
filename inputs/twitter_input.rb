class TwitterInput < Formtastic::Inputs::StringInput
  include FormtasticInputDefaults

  def to_html
    default_to_html do
      template.content_tag(:div, :class => 'input-prepend') do
        template.content_tag(:span, '@', :class => 'add-on') <<
        builder.text_field(method, input_html_options)
      end
    end
  end
end

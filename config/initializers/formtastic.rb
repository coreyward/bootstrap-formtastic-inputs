# encoding: utf-8

# Allow HTML in hints and labels
Formtastic::FormBuilder.escape_html_entities_in_hints_and_labels = false
Formtastic::FormBuilder.configure :default_hint_class, "help-block"

module Formtastic::Inputs::Base
  module Wrapping
    def input_wrapping(&block)
      template.content_tag(:li,
        # Removed `hint_html` and `error_html` from end of list to include instead within inputs
        # like Twitter Bootstrap CSS expects.
        template.capture(&block).html_safe, 
        wrapper_html_options
      )
    end
  end
    
  module Labelling
    # There is no reason for label elements to have a label class. This is just ridicululous, and
    # it interferes with Bootstrap labels. No thx!
    alias :native_label_html_options :label_html_options
    def label_html_options
      opts = native_label_html_options
      opts[:class].delete 'label'
      opts
    end
  end
end

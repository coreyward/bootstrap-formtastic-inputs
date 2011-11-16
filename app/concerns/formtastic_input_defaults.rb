module FormtasticInputDefaults
  extend ActiveSupport::Concern
  
  module ClassMethods
    def uses(field_method)
      define_method :to_html do
        default_to_html(:"#{field_method}")
      end
    end
    private :uses
  end
  
  module InstanceMethods
    
    def wrapper_html_options
      opts = super
      opts[:class] << ' clearfix'
      opts
    end
    
  protected
  
    def default_to_html(element_method = :text_field, wrapper_options = {})
      default_wrapper(wrapper_options) do
        if block_given?
          yield
        else
          builder.send(element_method, method, input_html_options)
        end
      end
    end
      
    def default_wrapper(options = {})
      input_wrapping do
        default_label_html(options) <<
        template.content_tag(:div, :class => 'input') do
          yield << hint_or_error_html
        end
      end
    end
    
    def default_label_html(options)
      x = label_html unless options[:hide_label] 
      x || ''.html_safe
    end
    
    def hint_or_error_html
      error_html.blank? ? hint_html : error_html
    end
  end
end

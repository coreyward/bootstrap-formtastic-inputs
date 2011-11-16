class CountryInput < Formtastic::Inputs::CountryInput
  include FormtasticInputDefaults
  
  def to_html
    raise "To use the :country input, please install a country_select plugin, like this one: http://github.com/rails/iso-3166-country-select" unless builder.respond_to?(:country_select)
    default_to_html do
      builder.country_select(method, priority_countries, input_options, input_html_options)
    end
  end  
end

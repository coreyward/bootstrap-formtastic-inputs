class UrlInput < Formtastic::Inputs::UrlInput
  include FormtasticInputDefaults
  uses :url_field
  
  def input_html_options
    opts = super
    opts[:placeholder] = 'http://' if opts[:placeholder].blank?
    opts
  end
end

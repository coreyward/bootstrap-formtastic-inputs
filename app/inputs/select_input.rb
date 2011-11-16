class SelectInput < Formtastic::Inputs::SelectInput
  include FormtasticInputDefaults
  
  def to_html
    default_to_html do
      (options[:group_by] ? grouped_select_html : select_html)
    end
  end
end

class StringInput < Formtastic::Inputs::StringInput
  include FormtasticInputDefaults
  uses :text_field
end

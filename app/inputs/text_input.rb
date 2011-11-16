class TextInput < Formtastic::Inputs::TextInput
  include FormtasticInputDefaults
  uses :text_area
end

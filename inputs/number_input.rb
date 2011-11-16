class NumberInput < Formtastic::Inputs::NumberInput
  include FormtasticInputDefaults
  uses :number_field
end

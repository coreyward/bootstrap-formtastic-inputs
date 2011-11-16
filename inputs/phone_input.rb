class PhoneInput < Formtastic::Inputs::PhoneInput
  include FormtasticInputDefaults
  uses :phone_field
end

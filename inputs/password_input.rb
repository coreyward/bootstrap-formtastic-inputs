class PasswordInput < Formtastic::Inputs::PasswordInput
  include FormtasticInputDefaults
  uses :password_field
end

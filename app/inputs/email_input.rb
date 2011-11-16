class EmailInput < Formtastic::Inputs::EmailInput
  include FormtasticInputDefaults
  uses :email_field
end

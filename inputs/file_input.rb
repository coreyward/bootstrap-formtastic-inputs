class FileInput < Formtastic::Inputs::FileInput
  include FormtasticInputDefaults
  uses :file_field
end

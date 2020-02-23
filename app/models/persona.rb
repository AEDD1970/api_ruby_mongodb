class Persona
  include Mongoid::Document
  field :codigo, type: String
  field :identificacion, type: String
  field :nombre, type: String
  field :apellido, type: String
  field :correo_institucional, type: String
  field :correo_personal, type: String
  field :telefono, type: Integer

 validates :codigo, presence:
 { message: 'no puede estar en blanco' }

   validates :identificacion, uniqueness:
 { message: 'la identificacion ya existe' }

 validates :correo_institucional, uniqueness:
 { message: 'el correo institucional ya existe' }

 validates :correo_personal, uniqueness:
 { message: 'el correo personal ya existe' }

end

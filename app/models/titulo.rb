class Titulo
  include Mongoid::Document
  field :diploma, type: String
  field :resolucion, type: String
  field :fecha_grado, type: Time
end

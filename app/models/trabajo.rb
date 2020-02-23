class Trabajo
  include Mongoid::Document
  field :estado_laboral, type: String
  field :empresa, type: String
  field :naturaleza, type: String
  field :cargo, type: String
  field :ciudad, type: String
  field :fecha_actulizacion, type: Time
  field :confirmacion, type: String
  field :observacion, type: String
end

class Thermometer
  include Mongoid::Document
  include Mongoid::Timestamps::Updated
  field :deviceid, type: String
  field :temperature, type: Float
  field :_id, type: String, default: ->{deviceid}
end

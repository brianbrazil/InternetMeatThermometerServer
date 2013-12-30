class Thermometer
  include Mongoid::Document
  field :deviceid, type: String
  field :temperature, type: Float
  field :updated_at, type: Time, default: ->{Time.now}
  field :_id, type: String, default: ->{deviceid}
end

json.array!(@thermometers) do |thermometer|
  json.extract! thermometer, :deviceid, :temperature, :updated_at
  json.url thermometer_url(thermometer, format: :json)
end

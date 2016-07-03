json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :name, :address, :reading, :unit
  json.url sensor_url(sensor, format: :json)
end

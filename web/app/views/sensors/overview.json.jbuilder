json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :created_at
  json.name sensor.name.humanize.gsub("sensor","")
  json.reading sensor.reading.round(2)
end

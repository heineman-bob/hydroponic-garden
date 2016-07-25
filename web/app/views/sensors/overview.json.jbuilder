json.array!(@sensors) do |sensor|
  json.extract! sensor, :id
  json.name sensor.name.humanize.gsub("sensor","")
  json.reading sensor.reading.round(2)
  zone = ActiveSupport::TimeZone.new("Central Time (US & Canada)")
  json.created_at sensor.created_at.in_time_zone(zone).strftime("%-m/%d %l:%M:%S %p")
end

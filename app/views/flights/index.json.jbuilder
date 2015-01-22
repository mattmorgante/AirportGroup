json.array!(@flights) do |flight|
  json.extract! flight, :id, :flight_number, :airline, :destination, :departure
  json.url flight_url(flight, format: :json)
end

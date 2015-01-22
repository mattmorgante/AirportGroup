json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :passport_id, :name, :age, :flight_id
  json.url passenger_url(passenger, format: :json)
end

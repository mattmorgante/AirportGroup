json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :ticket_id, :flight_id, :passenger_id
  json.url ticket_url(ticket, format: :json)
end

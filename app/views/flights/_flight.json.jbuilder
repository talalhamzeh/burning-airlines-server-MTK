json.extract! flight, :id, :number, :airplane_id, :date, :destination, :departure, :created_at, :updated_at
json.url flight_url(flight, format: :json)

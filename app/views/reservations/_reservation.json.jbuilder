json.extract! reservation, :id, :seat, :user_id, :flight_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)

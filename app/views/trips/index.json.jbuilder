json.array!(@trips) do |trip|
  json.extract! trip, :id, :neighboorhood_id, :nei_neighboorhood_id, :tri_trip_id, :trip_hour, :trip_price, :trip_accomplished, :trip_capacity, :trip_luggage, :trip_pet, :trip_smoker
  json.url trip_url(trip, format: :json)
end

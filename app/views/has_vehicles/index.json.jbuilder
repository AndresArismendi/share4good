json.array!(@has_vehicles) do |has_vehicle|
  json.extract! has_vehicle, :id, :vehiculo_id, :user_id
  json.url has_vehicle_url(has_vehicle, format: :json)
end

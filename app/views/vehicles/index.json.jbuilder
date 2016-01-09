json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :colour_id, :brand_id, :vehicle_number_plate
  json.url vehicle_url(vehicle, format: :json)
end

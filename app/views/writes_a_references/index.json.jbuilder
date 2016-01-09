json.array!(@writes_a_references) do |writes_a_reference|
  json.extract! writes_a_reference, :id, :user_id, :trip_id, :reference_id, :is_driver
  json.url writes_a_reference_url(writes_a_reference, format: :json)
end

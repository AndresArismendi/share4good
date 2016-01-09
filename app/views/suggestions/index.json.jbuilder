json.array!(@suggestions) do |suggestion|
  json.extract! suggestion, :id, :user_id, :suggestion_texto, :suggestion_fecha
  json.url suggestion_url(suggestion, format: :json)
end

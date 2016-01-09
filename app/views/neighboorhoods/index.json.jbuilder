json.array!(@neighboorhoods) do |neighboorhood|
  json.extract! neighboorhood, :id, :city_id, :neighboorhood_nombre
  json.url neighboorhood_url(neighboorhood, format: :json)
end

json.array!(@clients) do |client|
  json.extract! client, :id, :client_name, :client_last_name, :client_rut, :client_phone, :client_mail, :client_information
  json.url client_url(client, format: :json)
end

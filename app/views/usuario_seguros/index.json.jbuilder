json.array!(@usuario_seguros) do |usuario_seguro|
  json.extract! usuario_seguro, :id, :user_id, :usuario_seguro_enabled, :usuario_seguro_date
  json.url usuario_seguro_url(usuario_seguro, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :category_id, :user_age, :user_telephone, :user_email, :user_name, :user_last_name
  json.url user_url(user, format: :json)
end

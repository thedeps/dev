json.array!(@users) do |user|
  json.extract! user, :id, :login, :id_steam, :email, :password, :category
  json.url user_url(user, format: :json)
end

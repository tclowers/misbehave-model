json.array!(@users) do |user|
  json.extract! user, :id, :alias, :email, :gender, :password, :salt, :access_pass
  json.url user_url(user, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :name, :name_roma, :name_kana, :mail
  json.url user_url(user, format: :json)
end
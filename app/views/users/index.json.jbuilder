json.array!(@users) do |user|
  json.extract! user, :id, :name, :intro
  json.image "http://" + request.host_with_port + user.image_url(:thumb)
  json.url user_url(user, format: :json)
end

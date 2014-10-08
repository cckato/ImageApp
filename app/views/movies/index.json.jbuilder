json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :intro, :user_id
  json.image "http://" + request.host_with_port + movie.image_url(:thumb)
  json.create_at movie.created_at.localtime.strftime("%Y/%m/%d %H:%M:%S")
  json.user do
    json.name movie.user.name
    json.image "http://" + request.host_with_port + movie.user.image_url(:thumb)
  end
  json.comments_count movie.comments.count
end

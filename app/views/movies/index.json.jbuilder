json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :image, :intro, :user_id
  json.url movie_url(movie, format: :json)
end

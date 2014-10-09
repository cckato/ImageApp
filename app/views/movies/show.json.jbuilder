json.extract! @movie, :id, :name, :intro
json.set! :comments do
  json.array! @movie.comments do |comment|
    json.body comment.body
    json.created_at comment.created_at.strftime("%Y/%m/%d %H:%M:%S")
    json.user do
      json.id comment.user.id
      json.name comment.user.name
      json.image comment.user.image_url(:thumb_300x200)
    end
  end
end
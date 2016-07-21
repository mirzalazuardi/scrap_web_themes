json.array!(@posts) do |post|
  json.extract! post, :id, :title, :excerpt, :content, :image, :date_post, :download1, :download2, :tag, :cat1, :cat2
  json.url post_url(post, format: :json)
end

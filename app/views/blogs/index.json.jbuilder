json.array!(@blogs) do |blog|
  json.extract! blog, :id, :creator, :title, :body, :date
  json.url blog_url(blog, format: :json)
end

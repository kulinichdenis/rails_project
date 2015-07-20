json.array!(@sub_articles) do |sub_article|
  json.extract! sub_article, :id, :title, :content, :user_id, :article_id
  json.url sub_article_url(sub_article, format: :json)
end

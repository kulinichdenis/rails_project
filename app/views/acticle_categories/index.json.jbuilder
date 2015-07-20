json.array!(@acticle_categories) do |acticle_category|
  json.extract! acticle_category, :id, :article_id, :category_id
  json.url acticle_category_url(acticle_category, format: :json)
end

class ArticlePage < SitePrism::Page 

  set_url('articles/new')
  set_url_matcher(/\/articles\/new/)
    
  element :title, '#article_title'
  element :content, '#article_content'
  element :category, '#article_category_ids'
  element :submit, "input[name='commit']"

end
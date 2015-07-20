class ArticleShowPage < SitePrism::Page
  
  set_url('/articles/{article_id}')
  set_url_matcher(/\/articles\/\d+/)

  element :alert_panel, '.alert'
  element :link_back, 'a' , text: 'Back'
  element :link_delete_article, 'a', text: 'Delete'
  element :link_edit_article, 'a', text: 'Edit'
  
end
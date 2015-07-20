class HomePage < SitePrism::Page 

  set_url('/')

  element :alert_panel, '.alert'
  element :link_login ,'a', text: 'Log in'
  element :link_logout ,'a', text: 'Log out'
  element :head_title, '.jumboton h1'
  elements :articles, 'ul.articles li'
  element :new_article, 'a', text: 'New Article'
  
end
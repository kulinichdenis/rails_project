require 'rails_helper'

describe "show home page" do 
  
let(:home_page){ HomePage.new}
let(:article_page) { ArticlePage.new }
let(:article_show_page) {ArticleShowPage.new}
let!(:user) {create :user}

  it "show home page" do 
    home_page.load
    expect(home_page.head_title.text).to include 'List Articles'
  end

  it "add new article" do 
    login_as user
    home_page.load

    expect(home_page.articles.size).to eq 0
    
    home_page.new_article.click
    expect(article_page).to be_displayed

    article_page.title.set('Title')
    article_page.content.set('Test test test test test')
    article_page.category.set('Category1')
    article_page.category.set('Category2')
    article_page.submit.click
    
    expect(article_show_page).to be_displayed
    expect(article_show_page.alert_panel.text).to include 'Article was successfully created.'
    # article_show_page.link_back.click
    # expect(home_page).to be_displayed
    home_page.load
    expect(home_page.articles.size).to eq 1

  end

  it 'edit article' do

    login_ 

  end

end
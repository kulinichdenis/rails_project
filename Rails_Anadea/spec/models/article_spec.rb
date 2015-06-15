require "rails_helper"

describe Article do
  it "is valid a title, content, user_id" do
    article = Article.create(title: "123455",content: "12121212", user_id: 1)
    expect(article).to be_valid
  end

  it "is invalid title" do
    user = User.create 
    article = Article.create(title: "", content: "sadsadas", user_id: user)
    article.valid?
    expect(article.errors[:title]).to include("can't be blank")
     
  end

  it "is invalid content" do 
    article = Article.create(title: "asdasd", content: "", user_id: 1)
    article.valid?
    expect(article.errors[:content]).to include("can't be blank")
     
  end

  it "is invalid user" do 
    article = Article.create(:title => "asdasd", :content => "dfdsfdsfdsf", :user_id => nil)
    article.valid?
    expect(article.errors[:user_id]).to include("can't be blank") 
    # expect(article[:title]).to include("can't be blank") 
  end
  
  it "association belong_to" do 
    should belong_to(:user) 
  end

  it "association have_many" do 
    should have_many(:sub_articles)
  end

  it "association have_and_belong_to_many" do 
    should have_and_belong_to_many(:categories)
  end

end 
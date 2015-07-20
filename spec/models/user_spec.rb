require 'rails_helper'

describe User do

  it "create valid user" do 

    user = User.create(name:'vvv', email:'vvv@email.com', password:'123456789')
    expect(user).to be_valid
    
  
  end 
  
  it "is invalid user email, name, password" do

    user = User.create(name:nil, email:nil, password:nil)
    expect(user.errors).to include(:name, :email, :password)    

  end

  it "association has_many sub_article" do 

    should have_many(:sub_articles)

  end

end
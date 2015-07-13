require "rails_helper"

describe "the signin and signup process" do
  
  let(:sign_in_page) { SignInPage.new }
  let(:sign_up_page) { SignUPPage.new }
  let(:home_page) { HomePage.new }
  let!(:user) { create :user, email: 'email@email.com' }

  it "sign in" do
    
    sign_in_page.load
    sign_in_page.email_input.set('email@email.com')
    sign_in_page.password_input.set('password')
    sign_in_page.submit.click
    expect(home_page).to be_displayed
    expect(home_page.alert_panel.text).to include "Signed in successfully."
    
  end


  it "sign out" do 

    login_as user
    home_page.load   
    home_page.link_logout.click
    expect(home_page).to be_displayed
    expect(home_page.alert_panel.text).to include "Signed out successfully." 

  end

  it 'sign up' do

    sign_up_page.load
    sign_up_page.input_name.set('Bob')
    sign_up_page.input_email.set('bob@email.com')
    sign_up_page.input_password.set('123456789')
    sign_up_page.input_password_confirmation.set('123456789')
    sign_up_page.submit.click
    expect(home_page).to be_displayed
    expect(home_page.alert_panel.text).to include "Welcome! You have signed up successfully."
    expect(home_page.link_logout.text).to include "Log out"

  end

end

require "rails_helper"

describe "the signin process", type: :feature, js: true do
  let!(:user) { create :user, email: 'email@email.com' }

  it "signs me in" do
    # screenshot_and_open_image
    # save_and_open_page

    visit '/users/sign_in'

    within("#new_user") do
      fill_in 'Email', :with => 'email@email.com'
      fill_in 'Password', :with => 'password'
      
    end
      click_button 'Log in'
      expect(page).to have_content 'Signed in successfully.'
  end

  it 'sign up' do 

    visit '/users/sign_up'

    within("#new_user") do 
      fill_in 'Name', :with=> 'Tetris'
      fill_in 'Email', :with => 'eemail@email.com'
      fill_in 'Password', :with => '123456789'
      fill_in 'Password confirmation', :with => '123456789'
         
    end
      click_button 'Sign up'
      expect(page).to have_content 'Welcome! You have signed up successfully.'
     
  end

  
end

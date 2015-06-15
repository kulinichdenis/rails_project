require "rails_helper"

describe "the signin process", :type => :feature do
  before :each do
    visit root_path
  end

  it "signs me in" do
    # save_and_open_page
    screenshot_and_open_image
    


    # visit '/sessions/new'
    # within("#session") do
    #   fill_in 'Email', :with => 'user@example.com'
    #   fill_in 'Password', :with => 'password'
    # end
    # click_button 'Sign in'
    # expect(page).to have_content 'Success'
  end
end

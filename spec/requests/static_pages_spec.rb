require 'spec_helper'

describe "Static pages" do

  describe "Die Homepage" do

    it "Text in Anfuehrungsstrichen wird ignoriert außer 'Home of StaticPages'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home of StaticPages')
    end
    
    it "should have the right title" do
  visit '/static_pages/home'
  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
end

  end
describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('help')
    end
    
    it "should have the title help" do
  visit '/static_pages/help'
  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
end

    
  end

describe "Da About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
    
    it "should have the title About" do
  visit '/static_pages/about'
  expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
end

  end


end

require 'spec_helper'

describe "Static pages" do

  describe "Die Homepage" do

    it "Text in Anfuehrungsstrichen wird ignoriert außer 'Home of StaticPages'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home of StaticPages')
    end
  end
describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('help')
    end
  end

describe "Da About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About page')
    end
  end


end

require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

/Root Page/
subject {page}
  describe "Die Homepage" do
	before {visit root_path}

it { should have_content('Home of StaticPages') }
it { should have_title(full_title('')) }
it { should_not have_title('| Home') }

  end

/Help Page/

describe "Help page" do
before {visit help_path}
subject {page}

it { should have_content('Help') }
it {should have_title(full_title(' Help'))}

  end

/About Page/

describe "Da About page" do
before {visit about_path}
it { should have_content('About') }
it {should have_title(full_title(' About'))}
  end
  
  
/contact Page/

describe "A Contact Page" do
before {visit contact_path}

it {should have_content('Contact')}
it {should have_title(full_title('Contact'))}

end

it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    expect(page).to have_title(full_title(''))
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    #click_link "sample app"
    #expect(page).to # fill in
  end

end

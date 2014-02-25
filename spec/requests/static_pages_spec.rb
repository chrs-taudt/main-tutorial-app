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

end

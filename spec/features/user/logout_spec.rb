require 'rails_helper'

##added for testing features in gem file, o/w gives error
#gem 'phantomjs', :require => 'phantomjs/poltergeist'

RSpec.feature "Logout", :type => :feature do
    let(:user) { create(:user) }
    
    scenario 'user succesfully logs out', js: true do
        sign_in user
        visit root_path
        find('nav #user-settings').click
        find('nav a', text: 'Log out').click
        expect(page).to have_selector('nav a', text: 'Login')
    end
    
    # The code simulates a user clicking the logout button and 
    # then expects to see non-logged in user’s links on the navigation bar.
    # sign_in method is one of the Devise helper methods.
    # We have included those helper methods inside the rails_helper.rb file previously.

end

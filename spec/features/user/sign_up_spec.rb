require 'rails_helper'

RSpec.feature "Sign up", :test => :feature do
    let(:user) {build(:user)}
    
    scenario 'user navigates to the sign up page and succesfully signs up', js:true do
        visit root_path
        find('nav a', text: 'Signup').click
        fill_in 'user[name]', with: user.name
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        fill_in 'user[password_confirmation]', with: user.password_confirmation
        find('.sign-up-button').click
        expect(page).to have_selector('#user-settings')
        
        # We simulate a user navigating to the signup page,
        # filling the form, submitting the form and finally,
        # we expect to see the #user-settings element which is available only for logged in users.
        
        #Here we use the Devise’s build method instead of create.
        #This way we create a new object without saving it to the database.
    end
end
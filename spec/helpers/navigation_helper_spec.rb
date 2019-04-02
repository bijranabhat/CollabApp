require 'rails_helper'
#require ‘rails_helper' gives us an access to all testing configurations and methods

RSpec.describe NavigationHelper, :type => :helper do
  #:type => :helper treats our tests as helper specs and provides us with specific methods
  
  #Here we test two cases, when a user is logged in and when a user is not logged in
  
  context 'sign in user' do
      before(:each) {helper.stub(:user_signed_in?).and_return(true)}
      
      context '#collapsible_links_partial_path' do
          it "return signed_in_links partial's path" do
              expect(helper.collapsible_links_partial_path)#to. 
              ( eq 'layouts/navigation/collapsible_elements/signed_in_links' )
          end
      end
      
  end
  
  #In each context of signed in user and non-signed in user, we have before hooks. 
  #Inside the corresponding context, those hooks (methods) run before each our tests
  #In our case, before each test we run the stub method, so the user_signed_in? 
  #returns whatever value we tell it to return.
  
  #with the expect method we check that when we call collapsible_links_partial_path method,
  #we get an expected return value.

  context 'non-sign in user' do
      before(:each) {helper.stub(:user_signed_in?).and_return(false)}
      
      context '#collapsible_links_partial_path' do
          it "return non_signed_in_links partial's path" do
              expect(helper.collapsible_links_partial_path)#to.
              ( eq 'layouts/navigation/collapsible_elements/non_signed_in_links' )
          end
      end
      
  end
end
# This file is copied to spec/ when you run 'rails generate rspec:install'

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
# Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

# Checks for pending migrations and applies them before tests are run.
# If you are not using ActiveRecord, you can remove these lines.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

#added later 

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  
  
  config.use_transactional_fixtures = false
  
  
  
  #manually changed to false to setup database cleaner
  
  #This will disable rspec-rails’ implicit wrapping of tests in a database transaction.
  #Without disabling this, none of the following configuration will matter
  
  #this code added later
    config.before(:suite) do
      DatabaseCleaner.clean_with(:truncation)
    end
   #This says that before the entire test suite runs, clear the test database out completely.
   #This gets rid of any garbage left over from interrupted or poorly-written tests—a common source of surprising test behavior.
  
    config.before(:each) do
      DatabaseCleaner.strategy = :transaction
    end
    #This part sets the default database cleaning strategy to be transactions.
    #Transactions are very fast, and for all the tests where they do work—that is,
    #any test where the entire test runs in the RSpec process—they are preferable
   
    config.before(:each, :js => true) do
      DatabaseCleaner.strategy = :truncation
    end
    
   #This line only runs before examples which have been flagged :js => true.
   #By default, these are the only tests for which Capybara fires up a test server process and
   #drives an actual browser window via the Selenium backend. For these types of tests,
   #transactions won’t work, so this code overrides the setting and chooses the “truncation” strategy instead.
   
    config.before(:each) do
      DatabaseCleaner.start
    end
   
    config.after(:each) do
      DatabaseCleaner.clean
    end
    
    #These lines hook up database_cleaner around the beginning and end of each test,
    #telling it to execute whatever cleanup strategy we selected beforehand.
    
    
    #The last thing we’ve to do is to add some configurations.
    
  require 'capybara/poltergeist'
  require 'factory_bot_rails'
  require 'capybara/rspec'
  # With require methods we load files from the new added gems, so we could use their methods below.

  config.include Devise::Test::IntegrationHelpers, type: :feature
  #This configuration allows us to use devise methods inside capybara tests. Read Gem Documentation
  
  config.include FactoryBot::Syntax::Methods
  #This configuration allows to use factory_girl gem’s methods. Read Documentation
  
  Capybara.javascript_driver = :poltergeist
  Capybara.server = :puma 
  #Those two configurations are required in order to be able to test JavaScript with capybara.
    
    #end of added code

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, :type => :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")
end

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# For the navigation bar and the responsive grid system we’re going to use the Bootstrap library.
#In order to use this library we have to install the  bootstrap-sass gem.
gem 'bootstrap-sass', '~> 3.4.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Bootstrap JavaScript is dependent on jQuery library. Need to use jQuery with Rails
gem 'jquery-rails'

# For Authentication system we are going to use the Devise gem instead of building our own authentication system
gem 'devise'
gem 'hpricot'
gem 'ruby_parser'

#  To set up devise, we need to start postgres server: after rails generate devise user is done, type sudo service postgresql start
#  To access and run queries on to Postgres database, type sudo sudo -u postgres sql
#  Need to creat a database template 1 with TEMPLATE = template0
#  \quit to go back to command line from postgre command line

# after updatating the app/views/devise/sessions/new.html.erb with bootstrap components
# In order to use Bootstrap Forms in Rails, we've to add a 'bootstrap_form' gem to the Gem file

gem 'bootstrap_form'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# For Testing--Added later
gem 'rspec-rails', '~> 3.6'
gem 'factory_bot_rails'
gem 'rails-controller-testing'
gem 'headless'
gem 'capybara', '~> 3.0.0'
gem 'poltergeist' #need to install phantomjs for this to work properly npm install phantomjs
gem 'database_cleaner'


# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.0.0'
  gem 'selenium-webdriver'
  gem 'factory_bot'
  
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

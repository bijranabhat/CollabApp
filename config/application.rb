require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CollabApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    #****added later so that Rails doesn't load all helpers files to all views
    #Method names for different helper files might clash.
    config.action_controller.include_all_helpers = false
    #Now helpers are available for corresponding controller’s views only.
    # So if we have the PagesController, all helpers inside the pages_helper.rb
    # file will be available to all view files inside the pages directory.
    
  end
end

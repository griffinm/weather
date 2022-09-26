require_relative "boot"

require "rails/all"

# This list is here as documentation only - it's not used
# omitted = %w(

#   )
  
#   # Only the frameworks in Rails that do not pollute our routes
#   %w(
#   action_cable/engine
#   action_mailbox/engine
#   action_text/engine
#   sprockets/railtie
#   action_mailer/railtie
#   active_storage/engine
#   active_record/railtie
#   action_controller/railtie
#   action_view/railtie
#   active_job/railtie
#   rails/test_unit/railtie
# ).each do |railtie|
#   begin
#     require railtie
#   rescue LoadError
#   end
# end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Weather
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.autoload_paths << "#{Rails.root}/lib"
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end

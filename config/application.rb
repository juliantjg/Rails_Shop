require_relative 'boot'

require 'rails/all'

config.action_mailer.delivery_method = :smtp

config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => 'rad2021rails@gmail.com',
  :password             => "Blahblah123",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

host = 'hidden-beach-42020.herokuapp.com' #replace with your own url
config.action_mailer.default_url_options = { host: host }

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsShopApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

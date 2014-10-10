require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Comotti
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    CarrierWave.configure do |config|
      config.dropbox_app_key = "q1ettyi0ncao687"
      config.dropbox_app_secret = "xa6j56v6q7k9g0s"
      config.dropbox_access_token = "pnf5h8fdy11uyna"
      config.dropbox_access_token_secret = "7mirojnoqmagn1a"
      config.dropbox_user_id = "54889672"
      config.dropbox_access_type = "app_folder"
    end
  end
end

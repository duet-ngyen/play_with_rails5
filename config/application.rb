require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ToeicTest
  class Application < Rails::Application

      config.to_prepare do
        Devise::SessionsController.layout 'admin/admin_lte_2_login'
      end

    config.action_controller.permit_all_parameters = true
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

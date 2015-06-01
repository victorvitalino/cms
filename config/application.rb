require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Jupiter
  class Application < Rails::Application
   config.time_zone = 'Brasilia'

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '***', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :'pt-BR'

    config.assets.paths << "#{Rails.root}/app/assets/templates"
    
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.template_engine :haml
    end
  end
end

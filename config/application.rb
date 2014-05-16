require File.expand_path('../boot', __FILE__)
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"


Bundler.require(*Rails.groups)



module GemExpo
  class Application < Rails::Application
      config.generators do |g|
          g.test_framework :rspec,
          :views => false, 
          :fixture => true,
          helper_specs: false,
          routing_specs: false,
          controller_specs: true,
          request_specs: true
          g.fixture_replacement :factory_girl, dir: "spec/factories"
      end
  end
end

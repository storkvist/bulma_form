require 'rails/railtie'

module BulmaForm
  class Engine < Rails::Engine
    isolate_namespace BulmaForm

    config.generators do |generator|
      generator.test_framework :rspec
    end

    # config.eager_load_namespaces << BulmaForm
    # config.autoload_paths << File.expand_path('lib', __dir__)
  end
end

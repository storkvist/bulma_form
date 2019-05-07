require 'rails/railtie'

module BulmaForm
  class Engine < Rails::Engine
    config.eager_load_namespaces << BulmaForm
    config.autoload_paths << File.expand_path('lib', __dir__)
  end
end

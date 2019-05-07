lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bulma_form/version'

Gem::Specification.new do |spec|
  spec.name        = 'bulma_form'
  spec.version     = BulmaForm::VERSION
  spec.authors     = ['Vitaly Shlyaga']
  spec.email       = ['vitaly@shlyaga.ru']
  spec.homepage    = 'https://github.com/storkvist/bulma_form'
  spec.summary     = 'Rails form builder to style form using Bulma'
  spec.description = 'bulma_form is a rails form builder that makes it easy to create beautiful forms using Bulma'
  spec.license     = 'MIT'

  spec.files = Dir[
    'lib/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.md'
  ]

  # spec.add_dependency 'actionpack', '>= 5.0'
  # spec.add_dependency 'actionview', '>= 5.0'

  spec.add_development_dependency 'rspec-rails', '~> 3.8'
end

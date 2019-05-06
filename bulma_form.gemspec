$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'bulma_form/version'

Gem::Specification.new do |spec|
  spec.name        = 'bulma_form'
  spec.version     = BulmaForm::VERSION
  spec.authors     = ['Vitaly Shlyaga']
  spec.email       = ['vitaly@shlyaga.ru']
  spec.homepage    = 'https://github.com/storkvist/bulma_form'
  spec.summary     = 'Rails form builder to style form using Bulma'
  spec.description = 'bulma_form is a rails form builder that makes it easy '\
                     'to create beautiful forms using Bulma'
  spec.license     = 'MIT'

  spec.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.md'
  ]

  spec.add_dependency 'rails', '~> 6.0.0.rc1'
end

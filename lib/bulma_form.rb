require 'bulma_form/engine' if defined?(Rails)

require 'action_view'
require 'action_pack'

require 'bulma_form/action_view_extensions/form_helper'

module BulmaForm
  extend ActiveSupport::Autoload

  eager_autoload do
    autoload :FormBuilder
    autoload :FormFieldBuilder
    autoload :FormField

    autoload :Components
    autoload :Inputs
  end

  def self.eager_load!
    super

    BulmaForm::Components.eager_load!
    BulmaForm::Inputs.eager_load!
  end

  mattr_accessor :field_error_proc
  # rubocop:disable Style/ClassVars
  @@field_error_proc = proc do |html_tag, _instance_tag|
    html_tag
  end
  # rubocop:enable Style/ClassVars
end

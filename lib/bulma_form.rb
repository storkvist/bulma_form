require 'bulma_form/engine'

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
end

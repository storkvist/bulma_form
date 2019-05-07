require 'bulma_form/engine' if defined?(Rails)

require 'action_view'
require 'action_pack'

require 'bulma_form/action_view_extensions/form_helper'

module BulmaForm
  extend ActiveSupport::Autoload

  eager_autoload do
    autoload :FormBuilder
  end
end

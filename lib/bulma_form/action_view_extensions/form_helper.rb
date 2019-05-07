module BulmaForm
  module ActionViewExtensions
    # This module creates BulmaForm wrapper around the default form_with method.
    #
    # Example:
    #
    #   bulma_form_with model: @user do |form|
    #     form.text_field :name
    #   end
    module FormHelper
      def bulma_form_with(options = {}, &block)
        options.reverse_merge!(builder: BulmaForm::FormBuilder)

        form_with(options, &block)
      end
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include BulmaForm::ActionViewExtensions::FormHelper
end

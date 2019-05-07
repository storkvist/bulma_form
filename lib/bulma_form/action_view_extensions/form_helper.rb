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

        with_bulma_form_field_error_proc do
          form_with(options, &block)
        end
      end

      private

      def with_bulma_form_field_error_proc
        original_proc = ActionView::Base.field_error_proc
        ActionView::Base.field_error_proc = BulmaForm.field_error_proc
        yield
      ensure
        ActionView::Base.field_error_proc = original_proc
      end
    end
  end
end

ActiveSupport.on_load(:action_view) do
  include BulmaForm::ActionViewExtensions::FormHelper
end

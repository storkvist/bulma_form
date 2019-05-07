module BulmaForm
  module FormFieldBuilder
    extend ActiveSupport::Concern

    private

    def form_field_builder(method, options)
      form_field(method, options) { yield }
    end
  end
end

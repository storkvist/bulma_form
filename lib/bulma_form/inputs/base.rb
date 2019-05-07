module BulmaForm
  module Inputs
    module Base
      extend ActiveSupport::Concern

      INPUT_ELEMENTS = %i[email_field text_field].freeze

      class_methods do
        def bulma_field(field_name)
          define_method "#{field_name}_with_bulma" do |name, options = {}|
            form_field_builder(name, options) do
              options[:class] = [options[:class], 'input'].compact.join(' ') if INPUT_ELEMENTS.include?(field_name)

              send("#{field_name}_without_bulma".to_sym, name, options)
            end
          end

          bulma_alias(field_name)
        end

        def bulma_alias(field_name)
          alias_method "#{field_name}_without_bulma".to_sym, field_name
          alias_method field_name, "#{field_name}_with_bulma".to_sym
        end
      end
    end
  end
end

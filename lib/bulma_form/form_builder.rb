module BulmaForm
  class FormBuilder < ActionView::Helpers::FormBuilder
    attr_reader :layout

    include BulmaForm::FormFieldBuilder
    include BulmaForm::FormField
    include BulmaForm::Components

    include BulmaForm::Inputs::Base
    include BulmaForm::Inputs::EmailField
    include BulmaForm::Inputs::PasswordField
    include BulmaForm::Inputs::TextField

    delegate :content_tag, :capture, :concat, to: :@template

    def initialize(object_name, object, template, options)
      @layout = options[:layout]

      super
    end
  end
end

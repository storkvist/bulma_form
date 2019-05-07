module BulmaForm
  module FormField
    extend ActiveSupport::Concern

    def form_field(*args, &block)
      name = args.first
      options = args.extract_options!

      content_tag(:div, class: 'field') do
        concat field_label(name, options)
        concat field_control(&block)
        concat field_help(name, options)
      end
    end

    private

    def field_control(&block)
      content_tag(:div, class: 'control', &block)
    end

    def field_help(name, options)
      if error?(name)
        content_tag(:p, error_messages_for(name), class: 'help is-danger')
      elsif options[:help].present?
        content_tag(:p, options[:help], class: 'help')
      end
    end

    def field_label(name, options)
      label(name, options[:label], class: 'label')
    end
  end
end

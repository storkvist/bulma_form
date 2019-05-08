module BulmaHelper
  def form_with_source(&block)
    form_html = capture(&block)

    content_tag(:div, class: 'example') do
      concat form_html
      concat toggle
      concat codemirror(form_html)
    end
  end

  private

  def codemirror(form_html)
    content_tag(:div, class: 'code is-sr-only') do
      content_tag(:textarea, class: 'codemirror') do
        HtmlBeautifier.beautify(form_html.strip.gsub('>', ">\n").gsub('<', "\n<"))
      end
    end
  end

  def toggle
    content_tag(:button, class: 'toggle button is-small is-text') do
      'Show source code'
    end
  end
end

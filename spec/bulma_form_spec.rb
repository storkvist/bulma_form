require 'spec_helper'

describe 'BulmaForm::ActionViewExtensions::FormHelper.bulma_form_for' do
  include ActionView::TestCase::Behavior
  include BulmaForm::ActionViewExtensions::FormHelper

  let(:user) { User.new(email: 'vitaly@example.com', password: '12345678', comments: 'Comment.') }

  it 'renders default-style form' do
    expected = <<-HTML.strip_heredoc
      <form action="/users" accept-charset="UTF-8" data-remote="true" method="post">
        #{'<input name="utf8" type="hidden" value="&#x2713;"/>' unless ::Rails::VERSION::STRING >= '6'}
      </form>
    HTML

    expect(bulma_form_with(model: user) { |_f| nil }).to be_the_same_xml_as(expected)
  end
end

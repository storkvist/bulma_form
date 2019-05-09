require 'spec_helper'

describe 'Input elements' do
  include ActionView::TestCase::Behavior

  let(:user) { User.new(email: 'vitaly@example.com', password: '12345678', comments: 'Comment.') }
  let(:builder) { BulmaForm::FormBuilder.new(:user, user, self, {}) }

  it 'renders correct email fields' do
    expected = <<-HTML.strip_heredoc
      <div class="field">
        <label class="label" for="user_misc">Misc</label>
        <div class="control">
          <input class="input" type="email" id="user_misc" name="user[misc]">
        </div>
      </div>
    HTML

    expect(builder.email_field(:misc)).to be_the_same_xml_as(expected)
  end
end

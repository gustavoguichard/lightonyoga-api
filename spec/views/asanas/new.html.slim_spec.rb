# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'asanas/new', type: :view do
  before(:each) do
    assign(:asana, Asana.new(
                     name: 'MyString',
                     slug: 'MyString',
                     translation: 'MyString',
                     family: nil,
                     advanced_actions: 'MyText',
                     connections: 'MyText',
                     observe: 'MyText',
                     benefits: 'MyText',
                     caution: 'MyText',
                     contraindications: 'MyText'
                   ))
  end

  it 'renders new asana form' do
    render

    assert_select 'form[action=?][method=?]', asanas_path, 'post' do
      assert_select 'input[name=?]', 'asana[name]'

      assert_select 'input[name=?]', 'asana[slug]'

      assert_select 'input[name=?]', 'asana[translation]'

      assert_select 'input[name=?]', 'asana[family]'

      assert_select 'textarea[name=?]', 'asana[advanced_actions]'

      assert_select 'textarea[name=?]', 'asana[connections]'

      assert_select 'textarea[name=?]', 'asana[observe]'

      assert_select 'textarea[name=?]', 'asana[benefits]'

      assert_select 'textarea[name=?]', 'asana[caution]'

      assert_select 'textarea[name=?]', 'asana[contraindications]'
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'asanas/index', type: :view do
  before(:each) do
    assign(:asanas, [
             Asana.create!(
               name: 'Name',
               slug: 'Slug',
               translation: 'Translation',
               family: nil,
               advanced_actions: 'MyText',
               connections: 'MyText',
               observe: 'MyText',
               benefits: 'MyText',
               caution: 'MyText',
               contraindications: 'MyText'
             ),
             Asana.create!(
               name: 'Name',
               slug: 'Slug',
               translation: 'Translation',
               family: nil,
               advanced_actions: 'MyText',
               connections: 'MyText',
               observe: 'MyText',
               benefits: 'MyText',
               caution: 'MyText',
               contraindications: 'MyText'
             )
           ])
  end

  it 'renders a list of asanas' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Slug'.to_s, count: 2
    assert_select 'tr>td', text: 'Translation'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end

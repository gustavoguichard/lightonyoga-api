# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'asanas/show', type: :view do
  before(:each) do
    @asana = assign(:asana, Asana.create!(
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
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Translation/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

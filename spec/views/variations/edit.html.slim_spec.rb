require 'rails_helper'

RSpec.describe "variations/edit", type: :view do
  before(:each) do
    @variation = assign(:variation, Variation.create!())
  end

  it "renders the edit variation form" do
    render

    assert_select "form[action=?][method=?]", variation_path(@variation), "post" do
    end
  end
end

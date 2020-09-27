require 'rails_helper'

RSpec.describe "variations/new", type: :view do
  before(:each) do
    assign(:variation, Variation.new())
  end

  it "renders new variation form" do
    render

    assert_select "form[action=?][method=?]", variations_path, "post" do
    end
  end
end

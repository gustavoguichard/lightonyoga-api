require 'rails_helper'

RSpec.describe "variations/index", type: :view do
  before(:each) do
    assign(:variations, [
      Variation.create!(),
      Variation.create!()
    ])
  end

  it "renders a list of variations" do
    render
  end
end

require 'rails_helper'

RSpec.describe "variations/show", type: :view do
  before(:each) do
    @variation = assign(:variation, Variation.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

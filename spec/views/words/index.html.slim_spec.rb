require 'rails_helper'

RSpec.describe "words/index", type: :view do
  before(:each) do
    assign(:words, [
      Word.create!(),
      Word.create!()
    ])
  end

  it "renders a list of words" do
    render
  end
end

require 'rails_helper'

RSpec.describe "words/show", type: :view do
  before(:each) do
    @word = assign(:word, Word.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

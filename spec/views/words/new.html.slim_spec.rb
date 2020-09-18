require 'rails_helper'

RSpec.describe "words/new", type: :view do
  before(:each) do
    assign(:word, Word.new())
  end

  it "renders new word form" do
    render

    assert_select "form[action=?][method=?]", words_path, "post" do
    end
  end
end

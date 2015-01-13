require 'rails_helper'

RSpec.describe "championships/new", :type => :view do
  before(:each) do
    assign(:championship, Championship.new(
      :name => "MyString",
      :prize => "MyString",
      :match => nil
    ))
  end

  it "renders new championship form" do
    render

    assert_select "form[action=?][method=?]", championships_path, "post" do

      assert_select "input#championship_name[name=?]", "championship[name]"

      assert_select "input#championship_prize[name=?]", "championship[prize]"

      assert_select "input#championship_match_id[name=?]", "championship[match_id]"
    end
  end
end

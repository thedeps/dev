require 'rails_helper'

RSpec.describe "championships/edit", :type => :view do
  before(:each) do
    @championship = assign(:championship, Championship.create!(
      :name => "MyString",
      :prize => "MyString",
      :match => nil
    ))
  end

  it "renders the edit championship form" do
    render

    assert_select "form[action=?][method=?]", championship_path(@championship), "post" do

      assert_select "input#championship_name[name=?]", "championship[name]"

      assert_select "input#championship_prize[name=?]", "championship[prize]"

      assert_select "input#championship_match_id[name=?]", "championship[match_id]"
    end
  end
end

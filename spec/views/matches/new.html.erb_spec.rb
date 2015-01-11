require 'rails_helper'

RSpec.describe "matches/new", :type => :view do
  before(:each) do
    assign(:match, Match.new(
      :team1 => nil,
      :team2 => nil,
      :link => "MyString"
    ))
  end

  it "renders new match form" do
    render

    assert_select "form[action=?][method=?]", matches_path, "post" do

      assert_select "input#match_team1_id[name=?]", "match[team1_id]"

      assert_select "input#match_team2_id[name=?]", "match[team2_id]"

      assert_select "input#match_link[name=?]", "match[link]"
    end
  end
end

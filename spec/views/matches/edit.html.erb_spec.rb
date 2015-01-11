require 'rails_helper'

RSpec.describe "matches/edit", :type => :view do
  before(:each) do
    @match = assign(:match, Match.create!(
      :team1 => nil,
      :team2 => nil,
      :link => "MyString"
    ))
  end

  it "renders the edit match form" do
    render

    assert_select "form[action=?][method=?]", match_path(@match), "post" do

      assert_select "input#match_team1_id[name=?]", "match[team1_id]"

      assert_select "input#match_team2_id[name=?]", "match[team2_id]"

      assert_select "input#match_link[name=?]", "match[link]"
    end
  end
end

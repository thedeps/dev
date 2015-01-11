require 'rails_helper'

RSpec.describe "matches/index", :type => :view do
  before(:each) do
    assign(:matches, [
      Match.create!(
        :team1 => nil,
        :team2 => nil,
        :link => "Link"
      ),
      Match.create!(
        :team1 => nil,
        :team2 => nil,
        :link => "Link"
      )
    ])
  end

  it "renders a list of matches" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end

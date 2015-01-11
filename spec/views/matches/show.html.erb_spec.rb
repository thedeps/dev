require 'rails_helper'

RSpec.describe "matches/show", :type => :view do
  before(:each) do
    @match = assign(:match, Match.create!(
      :team1 => nil,
      :team2 => nil,
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Link/)
  end
end

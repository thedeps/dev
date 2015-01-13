require 'rails_helper'

RSpec.describe "championships/index", :type => :view do
  before(:each) do
    assign(:championships, [
      Championship.create!(
        :name => "Name",
        :prize => "Prize",
        :match => nil
      ),
      Championship.create!(
        :name => "Name",
        :prize => "Prize",
        :match => nil
      )
    ])
  end

  it "renders a list of championships" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Prize".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

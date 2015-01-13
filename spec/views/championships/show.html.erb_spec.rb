require 'rails_helper'

RSpec.describe "championships/show", :type => :view do
  before(:each) do
    @championship = assign(:championship, Championship.create!(
      :name => "Name",
      :prize => "Prize",
      :match => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Prize/)
    expect(rendered).to match(//)
  end
end

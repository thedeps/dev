require 'rails_helper'

RSpec.describe "equipes/show", :type => :view do
  before(:each) do
    @equipe = assign(:equipe, Equipe.create!(
      :nome => "Nome",
      :tag => "Tag",
      :capitao => nil,
      :jogadores => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Tag/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

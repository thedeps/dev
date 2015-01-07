require 'rails_helper'

RSpec.describe "equipes/index", :type => :view do
  before(:each) do
    assign(:equipes, [
      Equipe.create!(
        :nome => "Nome",
        :tag => "Tag",
        :capitao => nil,
        :jogadores => ""
      ),
      Equipe.create!(
        :nome => "Nome",
        :tag => "Tag",
        :capitao => nil,
        :jogadores => ""
      )
    ])
  end

  it "renders a list of equipes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

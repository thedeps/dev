require 'rails_helper'

RSpec.describe "equipes/new", :type => :view do
  before(:each) do
    assign(:equipe, Equipe.new(
      :nome => "MyString",
      :tag => "MyString",
      :capitao => nil,
      :jogadores => ""
    ))
  end

  it "renders new equipe form" do
    render

    assert_select "form[action=?][method=?]", equipes_path, "post" do

      assert_select "input#equipe_nome[name=?]", "equipe[nome]"

      assert_select "input#equipe_tag[name=?]", "equipe[tag]"

      assert_select "input#equipe_capitao_id[name=?]", "equipe[capitao_id]"

      assert_select "input#equipe_jogadores[name=?]", "equipe[jogadores]"
    end
  end
end

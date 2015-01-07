require "rails_helper"

RSpec.describe EquipesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/equipes").to route_to("equipes#index")
    end

    it "routes to #new" do
      expect(:get => "/equipes/new").to route_to("equipes#new")
    end

    it "routes to #show" do
      expect(:get => "/equipes/1").to route_to("equipes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/equipes/1/edit").to route_to("equipes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/equipes").to route_to("equipes#create")
    end

    it "routes to #update" do
      expect(:put => "/equipes/1").to route_to("equipes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/equipes/1").to route_to("equipes#destroy", :id => "1")
    end

  end
end

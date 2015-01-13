require "rails_helper"

RSpec.describe ChampionshipsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/championships").to route_to("championships#index")
    end

    it "routes to #new" do
      expect(:get => "/championships/new").to route_to("championships#new")
    end

    it "routes to #show" do
      expect(:get => "/championships/1").to route_to("championships#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/championships/1/edit").to route_to("championships#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/championships").to route_to("championships#create")
    end

    it "routes to #update" do
      expect(:put => "/championships/1").to route_to("championships#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/championships/1").to route_to("championships#destroy", :id => "1")
    end

  end
end

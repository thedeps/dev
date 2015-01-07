require 'rails_helper'

RSpec.describe "Equipes", :type => :request do
  describe "GET /equipes" do
    it "works! (now write some real specs)" do
      get equipes_path
      expect(response).to have_http_status(200)
    end
  end
end

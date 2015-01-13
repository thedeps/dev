require 'rails_helper'

RSpec.describe "Championships", :type => :request do
  describe "GET /championships" do
    it "works! (now write some real specs)" do
      get championships_path
      expect(response).to have_http_status(200)
    end
  end
end

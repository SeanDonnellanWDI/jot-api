require 'rails_helper'

RSpec.describe "Jots", type: :request do
  describe "GET /jots" do
    it "works! (now write some real specs)" do
      get jots_path
      expect(response).to have_http_status(200)
    end
  end
end

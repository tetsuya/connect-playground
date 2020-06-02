require "rails_helper"

RSpec.describe "PingControllers", type: :request do
  describe "GET /ping" do
    before do
      get "/ping"
    end
    it "responds pong" do
      expect(response).to have_http_status(200)
      expect(response.body).to include("pong")
    end
  end
end

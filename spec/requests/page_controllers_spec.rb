require "rails_helper"

RSpec.describe "PageControllers", type: :request do
  describe "GET /" do
    before do
      get "/"
    end
    it "responds :wave:" do
      expect(response).to have_http_status(200)
      expect(response.body).to include("👋")
    end
  end
end

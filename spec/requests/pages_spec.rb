require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /" do
    it "returns http success and contains site title" do
      get root_path
      expect(response).to have_http_status(:ok)
      expect(response.body).to include("Median S&O")
    end
  end
end
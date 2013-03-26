require 'spec_helper'

describe StaticController do
  describe "GET #index" do
    it "responds with 200" do
      get :index
      expect(response).to be_success
      expect(response.code).to eq("200")
    end
  end
end

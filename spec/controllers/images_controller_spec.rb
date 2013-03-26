require 'spec_helper'

describe ImagesController do
  describe "GET #index" do
    it "responds successfully with HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.code).to eq("200")
    end
    
    it "renders index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end

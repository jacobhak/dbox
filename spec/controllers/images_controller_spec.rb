require 'spec_helper'

describe ImagesController do
  describe "signed in as user" do
    describe "GET #index" do
      login_user

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

  describe "NOT signed in" do
    it "we cannot se index" do
      get :index
      expect(response).not_to be_success
    end
  end
end

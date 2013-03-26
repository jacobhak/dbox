require 'spec_helper'

describe ImagesController do
  describe "signed in as user" do
    login_user
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

      it "has a list of all images" do
        img1, img2 = FactoryGirl.create(:image), FactoryGirl.create(:image)
        get :index
        expect(assigns(:images).count).to eq(2)
        expect(assigns(:images)).to match_array([img1, img2])
      end
    end

    describe "GET #new" do
      it "successfully" do
        get :new
        expect(response).to be_success
      end
    end

    describe "GET #show" do
      it "successfully return the image if the image exists" do
        img1 = FactoryGirl.create(:image)
        img1.persisted?.should be_true
        get :show, {id: img1}
        assigns(:image).should eq(img1)

      end
      it "successfully render show template if image exists" do
        img1 = FactoryGirl.create(:image)
        get :show, {id: img1}
        expect(response).to be_success
      end
    end
  end

  describe "NOT signed in should not access" do
    it "GET #index" do
      get :index
      expect(response).not_to be_success
    end

    it "GET #new" do
      get :new
      expect(response).not_to be_success
    end

    it "GET #show" do
      img1 = FactoryGirl.create(:image)
      get :show, {id: img1}
      expect(response).not_to be_success
    end
  end
end

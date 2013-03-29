require 'spec_helper'

describe GroupsController do

  describe "signed in as user" do 
    login_user
    describe "GET #index" do
      it "successfully" do
        get :index
        expect(response).to be_success
        expect(response.code).to eq("200")
      end

      it "renders template" do
        get :index
        expect(response).to render_template("index")
      end
    end

    describe "GET #show" do
      it "successfully" do
        group1 = FactoryGirl.create(:group)
        group1.persisted?.should be_true

        get :show, { id: group1 }
        expect(response).to be_success
        expect(response.code).to eq("200")
      end

      it "renders template" do
        group1 = FactoryGirl.create(:group)
        group1.persisted?.should be_true

        get :show, { id: group1 }
        expect(response).to render_template("show")
      end

      it "assignes group" do
        group1 = FactoryGirl.create(:group)
        group1.persisted?.should be_true

        get :show, { id: group1 }
        expect(assigns(:group).name).to eq(group1.name)
      end
    end

    describe "GET #new" do
      it "successfully" do
        get :new
        expect(response).to be_success
        expect(response.code).to eq("200")
      end

      it "renders template" do
        get :new
        expect(response).to render_template("new")
      end

      it "has an empty group assigned" do
        get :new
        expect(assigns(:group)).to be_a_new(Group)
      end
    end

    describe "GET #edit" do
      it "successfully" do
        g1 = FactoryGirl.create(:group)
        g1.persisted?.should be_true
        
        get :edit, { id: g1 }
        expect(response).to be_success
        expect(response.code).to eq("200")
      end
    end

    describe "POST #create" do 
      it "creates a new group" do
        pending "Dont know how to test this"
      end
    end
  end

  describe "NOT signed in should not access" do
    it "GET #index" do
      get :index
      expect(response).not_to be_success
    end

    it "GET #show" do
      group1 = FactoryGirl.create(:group)
      get :show, { id: group1 }
      expect(response).not_to be_success
    end

    it "GET #new" do
      get :new
      expect(response).not_to be_success
    end
  end
end

require 'spec_helper'

describe Group do
  it "can be created" do
    group = FactoryGirl.create(:group)

    group.valid?.should be_true
  end

  describe "validations require" do
    it "group name" do
      group = FactoryGirl.build(:group, name: "")
      
      group.valid?.should be_false
    end
  end

  it "can has many users" do
    group = FactoryGirl.create(:group)
    u1 = FactoryGirl.create(:user)
    u2 = FactoryGirl.create(:user, email: "email2@dbox.se")
    group.users << u1
    group.users << u2

    group.users.count.should eq(2)
  end
end

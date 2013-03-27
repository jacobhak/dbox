require 'spec_helper'

describe User do
  it "can has groups" do
    group = FactoryGirl.create(:group)
    user = FactoryGirl.create(:user)
    user.groups << group

    user.groups.count.should eq(1)
  end
end
require 'spec_helper'

describe Tag do

  describe "initializes" do
    it "factoryGirled" do
      tag = FactoryGirl.create(:tag)
      tag.valid?.should be_true
    end

    it "must have a name" do
      tag = Tag.new

      tag.valid?.should be_false
    end
  end

  describe "belongs to images" do
    it "can has image" do
      tag = FactoryGirl.create(:tag)
      image = FactoryGirl.create(:image)

      image.tags << tag

      image.tags.count.should eq(1)

      tag.images.count.should eq(1)
    end
  end
end

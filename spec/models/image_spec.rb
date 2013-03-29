require 'spec_helper'

describe Image do
  
  it "has fields" do

  	image = Image.new(attachment: File.new(Rails.root + 'spec/fixtures/bacon.jpg'))

  	image.attachment_file_name.should eq("bacon.jpg")
  	
  end

  describe "validates" do
	  it "has an attachment" do
	  	image = Image.new
	  	image.valid?.should be_false
  	end
  end

  describe "TAGS" do
    it "can has" do
      image = FactoryGirl.create(:image)

      image.valid?.should be_true
    end
  end
end

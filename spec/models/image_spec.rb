require 'spec_helper'

describe Image do
  it "can be initialized" do
  	image = Image.new

  	image.save.should be_true
  end

  it "has fields" do

  	image = Image.new(attachment: File.new(Rails.root + 'spec/fixtures/bacon.jpg'))

  	image.attachment_file_name.should eq("bacon")
  	
  end
end

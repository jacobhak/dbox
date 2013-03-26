FactoryGirl.define do
  factory :image do
    attachment_file_name "image1"
	attachment_file_size 10.kilobytes
	attachment_content_type "image/jpg"
	attachment_updated_at 1.minute.ago
  end
end
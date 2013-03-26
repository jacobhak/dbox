# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email "user@dbox.se"
  	password "password13"
  end

  factory :admin do
  	email "admin@dbox.se"
  	password "password13"
  end
end

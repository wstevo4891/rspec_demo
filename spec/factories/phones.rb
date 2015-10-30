require 'faker'

FactoryGirl.define do
  factory :phone do |f|
    f.phone { Faker::PhoneNumber.phone_number }
  end
end

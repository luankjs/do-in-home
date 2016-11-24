FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    phone "(84) 99819-8816"
    is_admin "false"
    password "senha123"
  end
end
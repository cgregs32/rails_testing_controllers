FactoryBot.define do
  #sequences
  sequence :email do |n|
    "test_#{n}@test.com"
  end
  
  factory :user do
    email
    password 'password'
    name 'Test dude'
    nickname 'Test dude'
    application_ids []
  end
end

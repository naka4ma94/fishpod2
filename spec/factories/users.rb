FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "okamoto#{n}" }
    sequence(:email) { |n| "okamoto#{n}@example.com" }
    password { "testuser" }
  end
end

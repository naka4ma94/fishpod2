FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "tester2222#{n}" }
    sequence(:email) { |n| "tester2222#{n}@example.com" }
    password { "testuser" }
  end
end

FactoryBot.define do
  factory :area do
    name { |n| "test_area#{n}" }
    association :post
  end
end

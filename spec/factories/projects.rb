FactoryBot.define do
  factory :project do
    name { Faker::Lorem.sentence }
    deadline { Faker::Date.forward(days: 20) }
    status { Faker::Subscription.status }
    user_id { 1 }
    id { 1 }
  end
end
FactoryBot.define do
  factory :project do
    name { Faker::Lorem.sentence }
    deadline { Faker::Date.forward(days: 20) }
    status { Faker::Subscription.status }
  end
end
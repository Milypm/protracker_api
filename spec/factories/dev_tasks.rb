FactoryBot.define do
  factory :dev_task do
    notes { Faker::Lorem.paragraph }
    time { Faker::Number.between(from: 1, to: 60) }
  end
end
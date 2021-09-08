FactoryBot.define do
  factory :dev_task do
    notes { Faker::Lorem.paragraph }
    time { Faker::Number.between(from: 1, to: 60) }
    user_id { 1 }
    project_task_id { 1 }
    id { 1 } 
  end
end
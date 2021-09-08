FactoryBot.define do
  factory :project_task do
    assigned_to { Faker::Name.name }
    task { Faker::Lorem.sentence }
    user_id { 1 }
    project_id { 1 }
    id { 1 }
  end
end
FactoryBot.define do
  factory :project_task do
    assigned_to { Faker::Name.name }
    task { Faker::Lorem.sentence }
  end
end
FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    role { Faker::Company.profession }
    password { Faker::String.random(length: 3..12) }
  end
end
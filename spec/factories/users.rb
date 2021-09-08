FactoryBot.define do
  factory :user do
    name { 'Joe Smith' }
    role { 'PM' }
    password_digest { 'vhrbvkgfvakbcvberv' }
    id { 1 }
  end
end
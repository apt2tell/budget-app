require 'faker'

FactoryBot.define do
  factory :expenditure do
    name { Faker::App.name }
    amount { Faker::Number.number(digits: 10) }
    category_ids { Faker::Lorem.words(number: 5) }
    user { user }
  end
end

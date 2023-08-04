require 'faker'

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { "#{Faker::Hipster.words(number: 1).join(' ')}@gmail.com" }
    password { '147147' }
    trait :confirmed do
      confirmed_at { Time.zone.now }
      confirmation_sent_at { Time.zone.now }
      confirmation_token { Faker::Name.name }
    end
  end
end

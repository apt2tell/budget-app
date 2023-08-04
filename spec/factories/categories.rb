require 'faker'

FactoryBot.define do
  factory :category do
    name { Faker::Name.name }
    icon { Faker::Avatar.icon(size: '100x100', format: 'png') }
    user { user }
  end
end

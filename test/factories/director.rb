FactoryBot.define do
  factory :director do
    name { Faker::Name.name }
    age { Faker::Number.number(digits: 2) }
  end
end

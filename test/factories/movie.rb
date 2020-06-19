FactoryBot.define do
  factory :movie do
    director
    title { Faker::Superhero.name }
    facebook_likes { rand(100) }
    plot_keywords { "#{Faker::Lorem.word}|#{Faker::Lorem.word}"}
    year { Faker::Date.between(from: 10.years.ago, to: Date.today).year }
  end
end

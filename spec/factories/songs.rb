FactoryGirl.define do
  factory :song do
    name { Faker::GameOfThrones.character }
    artist { Faker::Number(500) }
  end
end

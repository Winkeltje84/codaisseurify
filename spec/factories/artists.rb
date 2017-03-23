FactoryGirl.define do
  factory :artist do
    name { Faker::GameOfThrones.character }
    image { Faker::Internet.url }
  end
end

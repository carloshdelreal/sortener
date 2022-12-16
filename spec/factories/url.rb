FactoryBot.define do
  factory :url do
    title { Faker::Book.title }
    source { Faker::Internet.url }
  end
end

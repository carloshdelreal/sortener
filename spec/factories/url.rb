FactoryBot.define do
  factory :url do
    title { Faker::Book.title }
    url { Faker::Internet.uuid.slice(0,8) }
    source { Faker::Internet.url }
    counter { 0 }
  end
end

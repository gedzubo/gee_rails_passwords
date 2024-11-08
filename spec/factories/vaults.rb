FactoryBot.define do
  factory :vault do
    name { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    user
  end
end

FactoryBot.define do
  factory :post do
    id { Faker::Number.number }
    title { Faker::Lorem.sentence  }
    content { Faker::Lorem.paragraphs }
    published { [false, true].sample }
    user 
  end
end

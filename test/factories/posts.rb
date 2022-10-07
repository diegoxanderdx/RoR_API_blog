FactoryBot.define do
  factory :post do
    id { Faker::Number.number }
    title { Faker::Lorem.sentence  }
    content { Faker::Lorem.paragraphs }
    published { [false, true].sample }
    user 
  end

  factory :published_post, class: 'Post' do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
    published { true }
    user
  end
end

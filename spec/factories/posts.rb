# spec/factories/posts.rb
FactoryBot.define do
  factory :post do
    title { "Sample Title" }
    description { "Sample description for the post." }
  end
end
FactoryGirl.define do
    factory :post do
      title { Faker::Commerce.product_name}
      price { Faker::Commerce.price }
      description { Faker::Lorem.paragraph }
      email { Faker::Internet.email }
      category_id { 1 }
    end
  end

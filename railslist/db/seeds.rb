require 'faker'

module CategoryImporter
  def self.import
    10.times do
      Category.create(name: Faker::Commerce.department)
    end
  end
end

module PostImporter
  def self.import
    50.times do
      Post.create(title: Faker::Commerce.product_name,
                     price: Faker::Commerce.price,
                     description: Faker::Lorem.paragraph,
                     email: Faker::Internet.email,
                     category_id: rand(1..10))
    end
  end
end

CategoryImporter.import
PostImporter.import

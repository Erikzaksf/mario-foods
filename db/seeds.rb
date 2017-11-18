# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Product.destroy_all
Review.destroy_all


50.times do |index|
  Faker::UniqueGenerator.clear
  product = Product.create!(name: Faker::Food.unique.dish,
                        cost: Faker::Number.decimal(2),
                        origin: Faker::Address.country)
                      5.times { product.reviews.create!(author: Faker::Name.name,
                                              content_body: Faker::Lorem.characters(200),
                                              rating: Faker::Number.between(1, 5) )}
end

p "Created #{Product.count}"

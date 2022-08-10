# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning the restaurants DB...'
Restaurant.destroy_all

puts 'Creating the restaurants DB...'
resaurant_name = ['Outoya', 'Sukiya', 'MC', 'KFC', 'KU']
resaurant_address = ['aaa111', 'bbb222','ccc333', 'ddd444', 'eee555']
resaurant_category = ["chinese", "italian", "japanese", "french", "belgian"]
i = 0
while i < 5
  Restaurant.create(name: resaurant_name[i], category: resaurant_category.sample, address: resaurant_address[i])
  i += 1
end

puts "...created #{Restaurant.count} restaurants"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: Restaurant::CATEGORIES.sample }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: Restaurant::CATEGORIES.sample }
bocuse = { name: "Bocus", address: "collonges au mont d'or", category: Restaurant::CATEGORIES.sample }
est =  { name: "Est", address: "Brotteaux, Lyon", category: Restaurant::CATEGORIES.sample }
ouest =  { name: "Ouest", address: "Bellecour, Lyon", category: Restaurant::CATEGORIES.sample }


[dishoom, pizza_east, bocuse, est, ouest].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

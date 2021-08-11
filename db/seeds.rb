# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
chez_toto = { name: "Chez Toto", address: "8 Boundary St, Paris E2 7JE", category: "french" }
barraque_a_frites =  { name: "Barraque à frites", address: "56A Shoreditch High St, Bruxelles E1 6PQ", category: "belgian" }
sakura = { name: "Sakura", address: "7 Boundary St, Tokyo E2 7JE", category: "japanese" }
kebab_tacos_gastro =  { name: "Kebab Tacos Gastro", address: "56A Shoreditch High St, Bordeaux E1 6PQ", category: "french" }
[ dishoom, pizza_east, chez_toto, barraque_a_frites, sakura, kebab_tacos_gastro].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

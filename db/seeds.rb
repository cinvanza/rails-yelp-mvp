# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "31123456789", category: "italian"}
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "31123456789", category: "italian"}
capri = {name: "Capri", address: "7 Boundary St, London E2 7JE", phone_number: "31123456789", category: "italian"}
lucia = {name: "Lucia", address: "7 Boundary St, London E2 7JE", phone_number: "31123456789", category: "italian"}
sopelsa = {name: "Sopelsa", address: "7 Boundary St, London E2 7JE", phone_number: "31123456789", category: "italian"}

[dishoom, pizza_east, capri, lucia, sopelsa].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

Restaurant.create(
  name: "hola",
  address: "hola2",
  phone_number: "31123456789",
  category: "japanese"
)

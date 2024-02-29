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
chopsticks_house = {name: "Chopstick House", address: "2 Bloomfield Ave, Bloomfield", phone_number: "(973) 743-8282", category: "chinese"}
casa_bella = {name: "Cassa Bella", address: "512 SW 3rd St Stuart, FL 34994", phone_number: "(772) 223-0077", category: "italian"}
sushi_grill = {name: "Sushi Grill", address: "512 SW 3rd St Stuart, FL 34994", phone_number: "(772) 223-0077", category: "japanese"}
la_parada = {name: "La Parada", address: "855 4th Avenue Brooklyn", phone_number: "(27)631614913", category: "french"}
krispy_king = {name: "Krispy King", address: "19th crescent warren hills Avenue", phone_number: "(263)549068", category: "belgian"}


[chopsticks_house,casa_bella,sushi_grill,la_parada,krispy_king].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

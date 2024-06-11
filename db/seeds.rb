# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Rental.create(user_id: 1, address: "10th st", city: "Chicago", state: "Il", price: 200, description: "this lovely 100sq ft shed...", home_type: "shed", rental_type: "room", total_occupancy: 1, total_bed_rentals: 0, total_bathrooms: 0)

Rental.create(user_id: 2, address: "9th st", city: "Dubuque", state: "Ia", price: 100, description: "A retrofitted Barn", home_type: "barn", rental_type: "house", total_occupancy: 15, total_bed_rentals: 2, total_bathrooms: 1)

Rental.create(user_id: 3, address: "8th st", city: "Houston", state: "Tx", price: 300, description: "A glamourous apartment", home_type: "apartment", rental_type: "house", total_occupancy: 3, total_bed_rentals: 1, total_bathrooms: 2)

Rental.create(user_id: 3, address: "7th st", city: "Houston", state: "Tx", price: 250, description: "an open floor concept bungalo", home_type: "bungalo", rental_type: "house", total_occupancy: 4, total_bed_rentals: 3, total_bathrooms: 2)
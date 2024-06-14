# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Rental.create(user_id: 1, name: "Dark Shed", address: "10th st", city: "Chicago", state: "Il", price: 200, description: "this lovely 100sq ft shed...", home_type: "shed", rental_type: "room", total_occupancy: 1, total_bed_rentals: 0, total_bathrooms: 0)

Rental.create(user_id: 2, name: "Farm Barn", address: "9th st", city: "Dubuque", state: "Ia", price: 100, description: "A retrofitted Barn", home_type: "barn", rental_type: "house", total_occupancy: 15, total_bed_rentals: 2, total_bathrooms: 1)

Rental.create(user_id: 3, name: "Sparkle Sparkle", address: "8th st", city: "Houston", state: "Tx", price: 300, description: "A glamourous apartment", home_type: "apartment", rental_type: "house", total_occupancy: 3, total_bed_rentals: 1, total_bathrooms: 2)

Rental.create(user_id: 3, name: "Cool kid bungalo", address: "7th st", city: "Houston", state: "Tx", price: 250, description: "an open floor concept bungalo", home_type: "bungalo", rental_type: "house", total_occupancy: 4, total_bed_rentals: 3, total_bathrooms: 2)

user = User.new(name: "Alicia", email: "alicia@stone.com", password: "password", image: "https://imageio.forbes.com/blogs-images/jenglantz/files/2018/09/Screen-Shot-2018-09-10-at-3.34.49-PM.png")
user.save

user = User.new(name: "Albert", email: "albert@einstein.com", password: "password", image: "https://nationaltoday.com/wp-content/uploads/2022/04/Albert-Einstein-Birthday-1200x834.jpg.webp")
user.save

user = User.new(name: "Bruce", email: "bruce@wayne.com", password: "password", image: "https://static.wikia.nocookie.net/batman/images/8/8a/Adam_West.jpg")
user.save

user = User.new(name: "Edgar", email: "edgar@poe.com", password: "password", image: "https://hadikarimi.com/wp-content/uploads/2020/12/Edgar-1.jpg")
user.save

RentalImage.create(rental_id: 1, url: "https://media.architecturaldigest.com/photos/65dce5d489212862875c04a9/16:9/w_2560%2Cc_limit/GettyImages-74179815.jpg")

RentalImage.create(rental_id: 2, url: "https://cdn.britannica.com/51/94151-050-99189B61/Barn.jpg")

RentalImage.create(rental_id: 3, url: "https://cdn.autonomous.ai/static/upload/images/new_post/great-shed-bar-ideas-to-enjoy-drinks-6163-1677465166832.webp")

RentalImage.create(rental_id: 1, url: "https://www.redfin.com/blog/wp-content/uploads/2022/04/california-bungalow-house.jpg")





# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.new(name: "Alicia", email: "alicia@stone.com", password: "password", image: "https://imageio.forbes.com/blogs-images/jenglantz/files/2018/09/Screen-Shot-2018-09-10-at-3.34.49-PM.png")
user.save

user = User.new(name: "Albert", email: "albert@einstein.com", password: "password", image: "https://nationaltoday.com/wp-content/uploads/2022/04/Albert-Einstein-Birthday-1200x834.jpg.webp")
user.save

user = User.new(name: "Bruce", email: "bruce@wayne.com", password: "password", image: "https://static.wikia.nocookie.net/batman/images/8/8a/Adam_West.jpg")
user.save

user = User.new(name: "Edgar", email: "edgar@poe.com", password: "password", image: "https://hadikarimi.com/wp-content/uploads/2020/12/Edgar-1.jpg")
user.save

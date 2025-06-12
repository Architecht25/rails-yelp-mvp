# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "🌱 Creating restaurants..."

Restaurant.destroy_all

Restaurant.create!(
  name: "Chez Mario",
  address: "12 rue de Rome, Bruxelles",
  phone_number: "0485 12 34 56",
  category: "italian"
)

Restaurant.create!(
  name: "Sakura",
  address: "8 avenue du Japon, Bruxelles",
  phone_number: "0498 77 88 99",
  category: "japanese"
)

Restaurant.create!(
  name: "La Petite Chine",
  address: "42 boulevard du Dragon, Liège",
  phone_number: "0470 55 22 33",
  category: "chinese"
)

Restaurant.create!(
  name: "Le Gourmet Français",
  address: "5 rue Victor Hugo, Namur",
  phone_number: "0466 44 11 00",
  category: "french"
)

Restaurant.create!(
  name: "Frites & Stoemp",
  address: "1 place du Sablon, Bruxelles",
  phone_number: "0471 99 00 11",
  category: "belgian"
)

puts "✅ Done seeding!"

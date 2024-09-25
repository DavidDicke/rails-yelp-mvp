# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "creating Restaurants"
Restaurant.create({name: "DaGiorgio's Restaurant Gesundbrunnen", address: "Grüntaler Str. 11, 13357 Berlin", category: "italian" })
Restaurant.create({name: "Rocca Pizza & Pasta Berlin", address: "Gleimstraße 11, 10437 Berlin", category: "italian" })
Restaurant.create({name: "Escendo Pizzeria", address: "Gleimstraße 21, 10437 Berlin", category: "italian" })
Restaurant.create({name: "La Buvette - Weinbar & Bistrot Français", address: "Gleimstraße 41, 10437 Berlin", category: "french" })
Restaurant.create({name: "Cafe Bar Restaurant Shan Shan", address: "Gleimstraße 24, 10437 Berlin", category: "chinese" })
puts "db seeded"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

file = File.open "db/stocks/stocks.json"
stocks = JSON.load file

stocks.each do |stock|
  Stock.where({ identifier: stock["identifier"] }).first_or_create!(({ identifier: stock["identifier"], symbol: stock["symbol"] }))
end

users = [{name: "user1", password: "password1"}, {name: "user2", password: "password2"}]

users.each do |user|
  User.where({ name: user["name"] }).first_or_create!({ name: user["name"], password: user["password"] })
end

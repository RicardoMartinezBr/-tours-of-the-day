# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database"

User.destroy_all

puts "Generating Users"

user_1 = User.new(email: "ricardoemartine@gmail.com", password: "123456", role: "Admin", first_name: "Ricardo", last_name: "Martinez", location: "Amsterdam")
user_1.save!

user_2 = User.create!(email: "thomas@gmail.com", password: "123456", role: "Tour Guide", first_name: "Thomas", last_name: "Martinez", location: "Amsterdam")
user_3 = User.create!(email: "martine@gmail.com", password: "123456", role: "user", first_name: "Martine", last_name: "Martinez", location: "Amsterdam")
user_4 = User.create!(email: "nathan@gmail.com", password: "123456", role: "user", first_name: "Nathan", last_name: "Martinez", location: "Amsterdam")


puts "Users created"

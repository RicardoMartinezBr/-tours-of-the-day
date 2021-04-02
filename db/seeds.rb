# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database"

# User.destroy_all
Tour.destroy_all

# puts "Generating Users"

# user_1 = User.new(email: "ricardoemartine@gmail.com", password: "123456", role: "Admin", first_name: "Ricardo", last_name: "Martinez", location: "Amsterdam")
# user_1.save!

# user_2 = User.create!(email: "thomas@gmail.com", password: "123456", role: "Tour Guide", first_name: "Thomas", last_name: "Martinez", location: "Amsterdam")
# user_3 = User.create!(email: "martine@gmail.com", password: "123456", role: "user", first_name: "Martine", last_name: "Martinez", location: "Amsterdam")
# user_4 = User.create!(email: "nathan@gmail.com", password: "123456", role: "user", first_name: "Nathan", last_name: "Martinez", location: "Amsterdam")

# puts "Users created"

puts "Generating Tour"

tour_1 = Tour.create(user_id:13, name: "The Hague City Tour", city: "The Hague", price: 300, category: "city tour", duration: "4", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_1_image = URI.open("http://res.cloudinary.com/dynirwhqr/image/upload/22o4lfdnpe49q1fer5y4sdu7vwc7")
tour_2_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_1.photos.attach(io: tour_1_image, filename: "tourimg1.png", content_type: "image/png")
tour_1.photos.attach(io: tour_2_image, filename: "tourimg2.png", content_type: "image/png")
tour_1.save!

tour_2 = Tour.create(user_id:13, name: "Amsterdam City Tour", city: "Amsterdam", price: 300, category: "city tour", duration: "4", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_3_image = URI.open("https://images.unsplash.com/photo-1558551649-e44c8f992010?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8YW1zdGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_4_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_2.photos.attach(io: tour_3_image, filename: "tourimg3.png", content_type: "image/png")
tour_2.photos.attach(io: tour_4_image, filename: "tourimg4.png", content_type: "image/png")
tour_2.save!

tour_3 = Tour.create(user_id:13, name: "Amsterdam Boat Tour", city: "Amsterdam", price: 300, category: "boat tour", duration: "3", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_5_image = URI.open("https://images.unsplash.com/photo-1529943247435-a5974e63d6e4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_6_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_3.photos.attach(io: tour_5_image, filename: "tourimg5.png", content_type: "image/png")
tour_3.photos.attach(io: tour_6_image, filename: "tourimg6.png", content_type: "image/png")
tour_3.save!

tour_4 = Tour.create(user_id:13, name: "Keukenhof", city: "Lise", price: 300, category: "keukenhof", duration: "3", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_7_image = URI.open("https://images.unsplash.com/photo-1597998523552-db3bf55207e1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8a2V1a2VuaG9mfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_8_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_4.photos.attach(io: tour_7_image, filename: "tourimg7.png", content_type: "image/png")
tour_4.photos.attach(io: tour_8_image, filename: "tourimg8.png", content_type: "image/png")
tour_4.save!

tour_5 = Tour.create(user_id:13, name: "Flower Fields", city: "Lise", price: 300, category: "keukenhof", duration: "1,5", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_9_image = URI.open("https://images.unsplash.com/photo-1556526945-0a2ef2955165?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGtldWtlbmhvZnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_10_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_5.photos.attach(io: tour_9_image, filename: "tourimg9.png", content_type: "image/png")
tour_5.photos.attach(io: tour_10_image, filename: "tourimg10.png", content_type: "image/png")
tour_5.save!

tour_6 = Tour.create(user_id:13, name: "Utrecht City Tour", city: "Utrecht", price: 300, category: "city tour", duration: "5", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_11_image = URI.open("https://images.unsplash.com/photo-1600506113428-6bca08071925?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fHV0cmVjaHR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_12_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_6.photos.attach(io: tour_11_image, filename: "tourimg11.png", content_type: "image/png")
tour_6.photos.attach(io: tour_12_image, filename: "tourimg12.png", content_type: "image/png")
tour_6.save!

tour_7 = Tour.create(user_id:13, name: "Rotterdam City Tour", city: "Rotterdam", price: 300, category: "city tour", duration: "6", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_13_image = URI.open("https://images.unsplash.com/photo-1541944766239-695501c0c318?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cm90dGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_14_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_7.photos.attach(io: tour_13_image, filename: "tourimg13.png", content_type: "image/png")
tour_7.photos.attach(io: tour_14_image, filename: "tourimg14.png", content_type: "image/png")
tour_7.save!

tour_8 = Tour.create(user_id:13, name: "Windmill Village Tour", city: "Zaanse Schans", price: 300, category: "city tour", duration: "4", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_15_image = URI.open("https://images.unsplash.com/photo-1563800037628-2b1bfb1876f2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHdpbmRtaWxsJTIwaG9sbGFuZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_16_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_8.photos.attach(io: tour_15_image, filename: "tourimg15.png", content_type: "image/png")
tour_8.photos.attach(io: tour_16_image, filename: "tourimg16.png", content_type: "image/png")
tour_8.save!

tour_9 = Tour.create(user_id:13, name: "Amsterdam Bike Tour", city: "Amsterdam", price: 300, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_17_image = URI.open("https://images.unsplash.com/photo-1524047934617-cb782c24e5f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmlrZSUyMCUyMGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_18_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_9.photos.attach(io: tour_17_image, filename: "tourimg9.png", content_type: "image/png")
tour_9.photos.attach(io: tour_18_image, filename: "tourimg10.png", content_type: "image/png")
tour_9.save!

puts "Tour created"

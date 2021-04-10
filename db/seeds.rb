# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database"
# puts "Creating user"

# User.destroy_all
Tour.destroy_all

# puts "Generating Users"

# user_1 = User.new(email: "ricardoemartine@ghotmail.com", password: "123456", role: "Admin", first_name: "Ricardo", last_name: "Martinez", location: "Amsterdam")
# user_1.save!

# user_2 = User.create!(email: "thomas@gmail.com", password: "123456", role: "Tour Guide", first_name: "Thomas", last_name: "Martinez", location: "Amsterdam")
# user_2.save!
# user_3 = User.create!(email: "martine@gmail.com", password: "123456", role: "user", first_name: "Martine", last_name: "Martinez", location: "Amsterdam")
# user_3.save!
# user_4 = User.create!(email: "nathan@gmail.com", password: "123456", role: "user", first_name: "Nathan", last_name: "Martinez", location: "Amsterdam")
# user_4.save!

# puts "Users created"

puts "Generating Tour"

tour_1 = Tour.create(user_id:2, name: "City Tour", city: "The Hague", price: 80, category: "city tour", duration: "4", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_1_image = URI.open("https://images.unsplash.com/photo-1595948868543-f45d731c2b37?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTl8fHRoZSUyMGhhZ3VlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_2_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_3_image = URI.open("https://images.unsplash.com/photo-1593439426324-71b3f44ca9ee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_4_image = URI.open("https://images.unsplash.com/photo-1552163512-f789cf478d59?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHRoZSUyMGhhZ3VlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_5_image = URI.open("https://images.unsplash.com/photo-1585320426283-6599b42b85ee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHRoZSUyMGhhZ3VlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_1.photos.attach(io: tour_1_image, filename: "tourimg1.png", content_type: "image/png")
tour_1.photos.attach(io: tour_2_image, filename: "tourimg2.png", content_type: "image/png")
tour_1.photos.attach(io: tour_3_image, filename: "tourimg3.png", content_type: "image/png")
tour_1.photos.attach(io: tour_4_image, filename: "tourimg4.png", content_type: "image/png")
tour_1.photos.attach(io: tour_5_image, filename: "tourimg5.png", content_type: "image/png")
tour_1.save!

tour_2 = Tour.create(user_id:2, name: "City Tour", city: "Amsterdam", price: 130, category: "city tour", duration: "4", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_6_image = URI.open("https://images.unsplash.com/photo-1558551649-e44c8f992010?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8YW1zdGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_7_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_8_image = URI.open("https://images.unsplash.com/photo-1541962830671-c47e0494f0f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_9_image = URI.open("https://images.unsplash.com/photo-1581193632869-f5004384a6ed?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_10_image = URI.open("https://images.unsplash.com/photo-1585211969224-3e992986159d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzB8fGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_2.photos.attach(io: tour_6_image, filename: "tourimg6.png", content_type: "image/png")
tour_2.photos.attach(io: tour_7_image, filename: "tourimg7.png", content_type: "image/png")
tour_2.photos.attach(io: tour_8_image, filename: "tourimg8.png", content_type: "image/png")
tour_2.photos.attach(io: tour_9_image, filename: "tourimg9.png", content_type: "image/png")
tour_2.photos.attach(io: tour_10_image, filename: "tourimg10.png", content_type: "image/png")
tour_2.save!

tour_3 = Tour.create(user_id:2, name: "Boat Tour", city: "Amsterdam", price: 300, category: "boat tour", duration: "3", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_11_image = URI.open("https://images.unsplash.com/photo-1529943247435-a5974e63d6e4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_12_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_13_image = URI.open("https://images.unsplash.com/photo-1605704320412-5c3255bf47a9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YW1zdGVyZGFtJTIwYm9hdHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_14_image = URI.open("https://images.unsplash.com/photo-1576638995410-cc3edd63bc27?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8YW1zdGVyZGFtJTIwYm9hdHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_15_image = URI.open("https://images.unsplash.com/photo-1529943247435-a5974e63d6e4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGFtc3RlcmRhbSUyMGJvYXR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_3.photos.attach(io: tour_11_image, filename: "tourimg11.png", content_type: "image/png")
tour_3.photos.attach(io: tour_12_image, filename: "tourimg12.png", content_type: "image/png")
tour_3.photos.attach(io: tour_13_image, filename: "tourimg13.png", content_type: "image/png")
tour_3.photos.attach(io: tour_14_image, filename: "tourimg14.png", content_type: "image/png")
tour_3.photos.attach(io: tour_15_image, filename: "tourimg15.png", content_type: "image/png")
tour_3.save!

tour_4 = Tour.create(user_id:2, name: "Keukenhof", city: "Lise", price: 130, category: "keukenhof", duration: "3", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_16_image = URI.open("https://images.unsplash.com/photo-1597998523552-db3bf55207e1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8a2V1a2VuaG9mfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_17_image = URI.open("https://images.unsplash.com/photo-1599725396833-6b96520b550e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8a2V1a2VuaG9mfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_18_image = URI.open("https://images.unsplash.com/photo-1520633713890-f5ebb76e727b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8a2V1a2VuaG9mfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_19_image = URI.open("https://images.unsplash.com/photo-1597998523552-db3bf55207e1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGtldWtlbmhvZnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_20_image = URI.open("https://images.unsplash.com/photo-1525341469513-b086d8a0011e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjh8fGtldWtlbmhvZnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60")
tour_4.photos.attach(io: tour_16_image, filename: "tourimg16.png", content_type: "image/png")
tour_4.photos.attach(io: tour_17_image, filename: "tourimg17.png", content_type: "image/png")
tour_4.photos.attach(io: tour_18_image, filename: "tourimg18.png", content_type: "image/png")
tour_4.photos.attach(io: tour_19_image, filename: "tourimg19.png", content_type: "image/png")
tour_4.photos.attach(io: tour_20_image, filename: "tourimg20.png", content_type: "image/png")
tour_4.save!

tour_5 = Tour.create(user_id:2, name: "Flower Fields", city: "Lise", price: 99, category: "keukenhof", duration: "1,5", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_21_image = URI.open("https://images.unsplash.com/photo-1556526945-0a2ef2955165?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGtldWtlbmhvZnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_22_image = URI.open("https://images.unsplash.com/photo-1556526945-0a2ef2955165?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8a2V1a2VuaG9mJTIwZmllbGR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_23_image = URI.open("https://images.unsplash.com/photo-1559027740-b754cd6c3da5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8a2V1a2VuaG9mJTIwZmllbGR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_24_image = URI.open("https://images.unsplash.com/photo-1614888773568-b6ca94359d8d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGtldWtlbmhvZiUyMGZpZWxkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_25_image = URI.open("https://images.unsplash.com/photo-1556526935-40cf37c388d6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGtldWtlbmhvZiUyMGZpZWxkfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_5.photos.attach(io: tour_21_image, filename: "tourimg21.png", content_type: "image/png")
tour_5.photos.attach(io: tour_22_image, filename: "tourimg22.png", content_type: "image/png")
tour_5.photos.attach(io: tour_23_image, filename: "tourimg23.png", content_type: "image/png")
tour_5.photos.attach(io: tour_24_image, filename: "tourimg24.png", content_type: "image/png")
tour_5.photos.attach(io: tour_25_image, filename: "tourimg25.png", content_type: "image/png")
tour_5.save!

tour_6 = Tour.create(user_id:2, name: "City Tour", city: "Utrecht", price: 160, category: "city tour", duration: "5", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_26_image = URI.open("https://images.unsplash.com/photo-1600506113428-6bca08071925?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fHV0cmVjaHR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_27_image = URI.open("https://images.unsplash.com/photo-1523961738618-3c1dde78b4c6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8dXRyZWNodHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_28_image = URI.open("https://images.unsplash.com/photo-1610399460836-ea8f879ca5b3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjR8fHV0cmVjaHR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_29_image = URI.open("https://images.unsplash.com/photo-1564900660267-3fc292f76c68?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDl8fHV0cmVjaHR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_30_image = URI.open("https://images.unsplash.com/photo-1567865223195-8a5662abd38d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fHV0cmVjaHR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_6.photos.attach(io: tour_26_image, filename: "tourimg26.png", content_type: "image/png")
tour_6.photos.attach(io: tour_27_image, filename: "tourimg27.png", content_type: "image/png")
tour_6.photos.attach(io: tour_28_image, filename: "tourimg28.png", content_type: "image/png")
tour_6.photos.attach(io: tour_29_image, filename: "tourimg29.png", content_type: "image/png")
tour_6.photos.attach(io: tour_30_image, filename: "tourimg30.png", content_type: "image/png")
tour_6.save!

tour_7 = Tour.create(user_id:2, name: "City Tour", city: "Rotterdam", price: 190, category: "city tour", duration: "6", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_31_image = URI.open("https://images.unsplash.com/photo-1541944766239-695501c0c318?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cm90dGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_32_image = URI.open("https://images.unsplash.com/photo-1465032995827-c3dce1d71c2a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8cm90dGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_33_image = URI.open("https://images.unsplash.com/photo-1565613057453-a9ab37f87351?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHJvdHRlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_34_image = URI.open("https://images.unsplash.com/photo-1610726720729-e70c754f59d5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fHJvdHRlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_35_image = URI.open("https://images.unsplash.com/photo-1565613057197-d3e811c9ac09?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjB8fHJvdHRlcmRhbXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60")
tour_7.photos.attach(io: tour_31_image, filename: "tourimg31.png", content_type: "image/png")
tour_7.photos.attach(io: tour_32_image, filename: "tourimg32.png", content_type: "image/png")
tour_7.photos.attach(io: tour_33_image, filename: "tourimg33.png", content_type: "image/png")
tour_7.photos.attach(io: tour_34_image, filename: "tourimg34.png", content_type: "image/png")
tour_7.photos.attach(io: tour_35_image, filename: "tourimg35.png", content_type: "image/png")
tour_7.save!

tour_8 = Tour.create(user_id:2, name: "Windmill Village Tour", city: "Zaanse Schans", price: 200, category: "city tour", duration: "4", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_36_image = URI.open("https://images.unsplash.com/photo-1563800037628-2b1bfb1876f2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHdpbmRtaWxsJTIwaG9sbGFuZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_37_image = URI.open("https://images.unsplash.com/photo-1566974698838-df9f8c07a639?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8emFuc2UlMjBzY2hhbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_38_image = URI.open("https://images.unsplash.com/photo-1566450653303-2614cbb292ea?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8emFuc2UlMjBzY2hhbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_39_image = URI.open("https://images.unsplash.com/photo-1516461920217-07f90f8d62fb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8emFuc2UlMjBzY2hhbnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_40_image = URI.open("https://images.unsplash.com/photo-1577566714262-5e156d73e3c5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fHphbnNlJTIwc2NoYW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_8.photos.attach(io: tour_36_image, filename: "tourimg36.png", content_type: "image/png")
tour_8.photos.attach(io: tour_37_image, filename: "tourimg37.png", content_type: "image/png")
tour_8.photos.attach(io: tour_38_image, filename: "tourimg38.png", content_type: "image/png")
tour_8.photos.attach(io: tour_39_image, filename: "tourimg39.png", content_type: "image/png")
tour_8.photos.attach(io: tour_40_image, filename: "tourimg40.png", content_type: "image/png")
tour_8.save!

tour_9 = Tour.create(user_id:2, name: "Bike Tour", city: "Amsterdam", price: 175, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_41_image = URI.open("https://images.unsplash.com/photo-1524047934617-cb782c24e5f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmlrZSUyMCUyMGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_42_image = URI.open("https://images.unsplash.com/photo-1613163890954-479492c97b8a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YW1zdGVyZGFtJTIwYmlrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_43_image = URI.open("https://images.unsplash.com/photo-1612270237088-d1262c013709?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YW1zdGVyZGFtJTIwYmlrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_44_image = URI.open("https://images.unsplash.com/photo-1541687664971-639c2f8b63f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8YW1zdGVyZGFtJTIwYmlrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_45_image = URI.open("https://images.unsplash.com/photo-1612399533890-dde9bd2de6ac?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGFtc3RlcmRhbSUyMGJpa2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_9.photos.attach(io: tour_41_image, filename: "tourimg41.png", content_type: "image/png")
tour_9.photos.attach(io: tour_42_image, filename: "tourimg42.png", content_type: "image/png")
tour_9.photos.attach(io: tour_43_image, filename: "tourimg43.png", content_type: "image/png")
tour_9.photos.attach(io: tour_44_image, filename: "tourimg44.png", content_type: "image/png")
tour_9.photos.attach(io: tour_45_image, filename: "tourimg45.png", content_type: "image/png")
tour_9.save!

tour_10 = Tour.create(user_id:2, name: "Night Tour", city: "Amsterdam", price: 180, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_46_image = URI.open("https://images.unsplash.com/photo-1590175873761-c67bf2ecf3f8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YW1zdGVyZGFtJTIwbmlnaHR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_47_image = URI.open("https://images.unsplash.com/photo-1523113501336-6ea4a7d6660d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8YW1zdGVyZGFtJTIwbmlnaHR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_48_image = URI.open("https://images.unsplash.com/photo-1577365038380-caa2b2eb3b97?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGFtc3RlcmRhbSUyMG5pZ2h0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_49_image = URI.open("https://images.unsplash.com/photo-1518622923628-f909e4f7c583?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGFtc3RlcmRhbSUyMG5pZ2h0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_50_image = URI.open("https://images.unsplash.com/photo-1511640608432-d8809531af11?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fGFtc3RlcmRhbSUyMG5pZ2h0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_10.photos.attach(io: tour_46_image, filename: "tourimg46.png", content_type: "image/png")
tour_10.photos.attach(io: tour_47_image, filename: "tourimg47.png", content_type: "image/png")
tour_10.photos.attach(io: tour_48_image, filename: "tourimg48.png", content_type: "image/png")
tour_10.photos.attach(io: tour_49_image, filename: "tourimg49.png", content_type: "image/png")
tour_10.photos.attach(io: tour_50_image, filename: "tourimg50.png", content_type: "image/png")
tour_10.save!

tour_11 = Tour.create(user_id:2, name: "Museum Tour", city: "Amsterdam", price: 230, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_51_image = URI.open("https://images.unsplash.com/photo-1499762524203-b47f7b1b26a5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzZXVtJTIwYW1zdGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_52_image = URI.open("https://images.unsplash.com/photo-1514905552197-0610a4d8fd73?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bXVzZXVtJTIwYW1zdGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_53_image = URI.open("https://images.unsplash.com/photo-1589874103322-b51ff168a35d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8bXVzZXVtJTIwYW1zdGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_54_image = URI.open("https://images.unsplash.com/photo-1577049093797-e29773f1e095?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bXVzZXVtJTIwYW1zdGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_55_image = URI.open("https://images.unsplash.com/photo-1577049093012-5e4254278983?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG11c2V1bSUyMGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_11.photos.attach(io: tour_51_image, filename: "tourimg51.png", content_type: "image/png")
tour_11.photos.attach(io: tour_52_image, filename: "tourimg52.png", content_type: "image/png")
tour_11.photos.attach(io: tour_53_image, filename: "tourimg53.png", content_type: "image/png")
tour_11.photos.attach(io: tour_54_image, filename: "tourimg54.png", content_type: "image/png")
tour_11.photos.attach(io: tour_55_image, filename: "tourimg55.png", content_type: "image/png")
tour_11.save!

tour_12 = Tour.create(user_id:2, name: "Food Tour", city: "Amsterdam", price: 110, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_56_image = URI.open("https://images.unsplash.com/photo-1548091960-fa93ce7f544d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZCUyMGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60")
tour_57_image = URI.open("https://images.unsplash.com/photo-1552691562-ca24c2d53fda?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8Zm9vZCUyMGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_58_image = URI.open("https://images.unsplash.com/photo-1599894555091-71db8e565f63?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fGZvb2QlMjBhbXN0ZXJkYW18ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_59_image = URI.open("https://images.unsplash.com/photo-1558773126-45d7f59e4054?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDR8fGZvb2QlMjBhbXN0ZXJkYW18ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_60_image = URI.open("https://images.unsplash.com/photo-1598762888896-e7b15d26552c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTl8fGZvb2QlMjBhbXN0ZXJkYW18ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_12.photos.attach(io: tour_56_image, filename: "tourimg56.png", content_type: "image/png")
tour_12.photos.attach(io: tour_57_image, filename: "tourimg57.png", content_type: "image/png")
tour_12.photos.attach(io: tour_58_image, filename: "tourimg58.png", content_type: "image/png")
tour_12.photos.attach(io: tour_59_image, filename: "tourimg59.png", content_type: "image/png")
tour_12.photos.attach(io: tour_60_image, filename: "tourimg60.png", content_type: "image/png")
tour_12.save!

tour_13 = Tour.create(user_id:2, name: "Bike Tour Amsterdam", city: "Amsterdam", price: 299, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_61_image = URI.open("https://images.unsplash.com/photo-1524047934617-cb782c24e5f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmlrZSUyMCUyMGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_62_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_63_image = URI.open("https://images.unsplash.com/photo-1606988898144-b4e1169b93ef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGFtc3RlcmRhbSUyMG1hcmtldHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_64_image = URI.open("https://images.unsplash.com/photo-1578854571967-d1da9fb527c0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGFtc3RlcmRhbSUyMGJpa2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_65_image = URI.open("https://images.unsplash.com/photo-1613163890954-479492c97b8a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YW1zdGVyZGFtJTIwYmlrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_13.photos.attach(io: tour_61_image, filename: "tourimg61.png", content_type: "image/png")
tour_13.photos.attach(io: tour_62_image, filename: "tourimg62.png", content_type: "image/png")
tour_13.photos.attach(io: tour_63_image, filename: "tourimg63.png", content_type: "image/png")
tour_13.photos.attach(io: tour_64_image, filename: "tourimg64.png", content_type: "image/png")
tour_13.photos.attach(io: tour_65_image, filename: "tourimg65.png", content_type: "image/png")
tour_13.save!

tour_14 = Tour.create(user_id:2, name: "Market Tour", city: "Amsterdam", price: 210, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_66_image = URI.open("https://images.unsplash.com/photo-1596878477485-578740d1b987?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGFtc3RlcmRhbSUyMG1hcmtldHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_67_image = URI.open("https://images.unsplash.com/photo-1570738149267-f80bdc31bfc9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fGFtc3RlcmRhbSUyMG1hcmtldHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_68_image = URI.open("https://images.unsplash.com/photo-1588099140103-eb7e0ae84d00?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YW1zdGVyZGFtJTIwbWFya2V0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_69_image = URI.open("https://images.unsplash.com/photo-1477763858572-cda7deaa9bc5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YW1zdGVyZGFtJTIwbWFya2V0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_70_image = URI.open("https://images.unsplash.com/photo-1542795175-8af6bf21ec78?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YW1zdGVyZGFtJTIwbWFya2V0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_14.photos.attach(io: tour_66_image, filename: "tourimg66.png", content_type: "image/png")
tour_14.photos.attach(io: tour_67_image, filename: "tourimg67.png", content_type: "image/png")
tour_14.photos.attach(io: tour_68_image, filename: "tourimg68.png", content_type: "image/png")
tour_14.photos.attach(io: tour_69_image, filename: "tourimg69.png", content_type: "image/png")
tour_14.photos.attach(io: tour_70_image, filename: "tourimg70.png", content_type: "image/png")
tour_14.save!

tour_15 = Tour.create(user_id:2, name: "Children Tour", city: "Amsterdam", price: 79, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_71_image = URI.open("https://images.unsplash.com/photo-1564522011569-df2ac9f3702a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YW1zdGVyZGFtJTIwY2hpbGRyZW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_72_image = URI.open("https://images.unsplash.com/photo-1597138153220-0078b454524f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bmVtbyUyMG11c2V1bXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_73_image = URI.open("https://images.unsplash.com/photo-1571942168622-ed3577154879?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bmVtbyUyMG11c2V1bXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_74_image = URI.open("https://images.unsplash.com/photo-1446421844667-1004fc1cfa61?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bmVtbyUyMG11c2V1bXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_75_image = URI.open("https://images.unsplash.com/photo-1564522802704-c1373dce4cc8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fG5lbW8lMjBtdXNldW18ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_15.photos.attach(io: tour_71_image, filename: "tourimg71.png", content_type: "image/png")
tour_15.photos.attach(io: tour_72_image, filename: "tourimg72.png", content_type: "image/png")
tour_15.photos.attach(io: tour_73_image, filename: "tourimg73.png", content_type: "image/png")
tour_15.photos.attach(io: tour_74_image, filename: "tourimg74.png", content_type: "image/png")
tour_15.photos.attach(io: tour_75_image, filename: "tourimg75.png", content_type: "image/png")
tour_15.save!

tour_16 = Tour.create(user_id:2, name: "Beer Experience Tour", city: "Amsterdam", price: 199, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_76_image = URI.open("https://images.unsplash.com/photo-1612528443702-f6741f70a049?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8ZHV0Y2glMjBiZWVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_77_image = URI.open("https://images.unsplash.com/photo-1579106391617-bf9edae36907?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8ZHV0Y2glMjBiZWVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_78_image = URI.open("https://images.unsplash.com/photo-1586657596646-d4af5922ab47?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGR1dGNoJTIwYmVlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_79_image = URI.open("https://images.unsplash.com/photo-1589711428920-bf084b80e0bd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fGR1dGNoJTIwYmVlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_80_image = URI.open("https://images.unsplash.com/photo-1584225064785-c62a8b43d148?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDR8fGR1dGNoJTIwYmVlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_16.photos.attach(io: tour_76_image, filename: "tourimg76.png", content_type: "image/png")
tour_16.photos.attach(io: tour_77_image, filename: "tourimg77.png", content_type: "image/png")
tour_16.photos.attach(io: tour_78_image, filename: "tourimg78.png", content_type: "image/png")
tour_16.photos.attach(io: tour_79_image, filename: "tourimg79.png", content_type: "image/png")
tour_16.photos.attach(io: tour_80_image, filename: "tourimg80.png", content_type: "image/png")
tour_16.save!

tour_17 = Tour.create(user_id:2, name: "Private Tour", city: "Amsterdam", price: 220, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_81_image = URI.open("https://images.unsplash.com/photo-1575936444724-1cd7baee8ec2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGFtc3RlcmRhbSUyMHN1bW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_82_image = URI.open("https://images.unsplash.com/photo-1534352177297-185dbcb2dfde?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fGFtc3RlcmRhbSUyMHN1bW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_83_image = URI.open("https://images.unsplash.com/photo-1546631476-4586506a4fdf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjR8fGFtc3RlcmRhbSUyMHN1bW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_84_image = URI.open("https://images.unsplash.com/photo-1610899732513-b09a9513f1f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDZ8fGFtc3RlcmRhbSUyMHN1bW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_85_image = URI.open("https://images.unsplash.com/photo-1598749158550-bd1b7446e043?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8dG91ciUyMGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_17.photos.attach(io: tour_81_image, filename: "tourimg81.png", content_type: "image/png")
tour_17.photos.attach(io: tour_82_image, filename: "tourimg82.png", content_type: "image/png")
tour_17.photos.attach(io: tour_83_image, filename: "tourimg83.png", content_type: "image/png")
tour_17.photos.attach(io: tour_84_image, filename: "tourimg84.png", content_type: "image/png")
tour_17.photos.attach(io: tour_85_image, filename: "tourimg85.png", content_type: "image/png")
tour_17.save!

tour_18 = Tour.create(user_id:2, name: "Museum Guided Tour", city: "Amsterdam", price: 150, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_86_image = URI.open("https://images.unsplash.com/photo-1615829358109-8187aa2a0856?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDB8fGFtc3RlcmRhbSUyMHN1bW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_87_image = URI.open("https://images.unsplash.com/photo-1586174035695-35ab9e19215c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dGhlJTIwaGFndWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_88_image = URI.open("https://images.unsplash.com/photo-1615829358148-91d29bc0099f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fGFtc3RlcmRhbSUyMHN1bW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_89_image = URI.open("https://images.unsplash.com/photo-1577049093797-e29773f1e095?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bXVzZXVtJTIwYW1zdGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_90_image = URI.open("https://images.unsplash.com/photo-1578061718358-80dd1325dfc1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fG11c2V1bSUyMGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_18.photos.attach(io: tour_86_image, filename: "tourimg86.png", content_type: "image/png")
tour_18.photos.attach(io: tour_87_image, filename: "tourimg87.png", content_type: "image/png")
tour_18.photos.attach(io: tour_88_image, filename: "tourimg88.png", content_type: "image/png")
tour_18.photos.attach(io: tour_89_image, filename: "tourimg89.png", content_type: "image/png")
tour_18.photos.attach(io: tour_90_image, filename: "tourimg90.png", content_type: "image/png")
tour_18.save!

tour_19 = Tour.create(user_id:2, name: "Day Trip", city: " Utrecht and Rotterdam", price: 299, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_91_image = URI.open("https://images.unsplash.com/photo-1553937028-f06174f6feb8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTl8fGFtc3RlcmRhbSUyMHN1bW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_92_image = URI.open("https://images.unsplash.com/photo-1561333219-e0c509ad9e2f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NzF8fGFtc3RlcmRhbSUyMHN1bW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_93_image = URI.open("https://images.unsplash.com/photo-1519662647148-fff8e00fe4ac?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjJ8fHV0cmVjaHR8ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60")
tour_94_image = URI.open("https://images.unsplash.com/photo-1564085027787-7f8911ca8d91?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHV0cmVjaHR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_95_image = URI.open("https://images.unsplash.com/photo-1541944766239-695501c0c318?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cm90dGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_19.photos.attach(io: tour_91_image, filename: "tourimg91.png", content_type: "image/png")
tour_19.photos.attach(io: tour_92_image, filename: "tourimg92.png", content_type: "image/png")
tour_19.photos.attach(io: tour_93_image, filename: "tourimg93.png", content_type: "image/png")
tour_19.photos.attach(io: tour_94_image, filename: "tourimg94.png", content_type: "image/png")
tour_19.photos.attach(io: tour_95_image, filename: "tourimg95.png", content_type: "image/png")
tour_19.save!

tour_20 = Tour.create(user_id:2, name: "Airport Transfer", city: "Amsterdam", price: 110, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_96_image = URI.open("https://images.unsplash.com/photo-1557689879-7a4a3cf1576d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fHByaXZhdGUlMjBjYXJ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_97_image = URI.open("https://images.unsplash.com/photo-1571095818584-3879e717a3f6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODV8fGFpcnBvcnQlMjBzaHV0bGxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_98_image = URI.open("https://images.unsplash.com/photo-1589285243981-5d883d076bc7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxhaXJwb3J0JTIwc2h1dGxsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_99_image = URI.open("https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZHJpdmVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_100_image = URI.open("https://images.unsplash.com/photo-1482029255085-35a4a48b7084?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8ZHJpdmVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_20.photos.attach(io: tour_96_image, filename: "tourimg96.png", content_type: "image/png")
tour_20.photos.attach(io: tour_97_image, filename: "tourimg97.png", content_type: "image/png")
tour_20.photos.attach(io: tour_98_image, filename: "tourimg98.png", content_type: "image/png")
tour_20.photos.attach(io: tour_99_image, filename: "tourimg99.png", content_type: "image/png")
tour_20.photos.attach(io: tour_100_image, filename: "tourimg100.png", content_type: "image/png")
tour_20.save!

tour_21 = Tour.create(user_id:2, name: "Tour During Layover", city: "Amsterdam", price: 240, category: "bike tour", duration: "2", description: "Seing Amsterdam by Bike is one of best way to experience the city like a local as biking is the most famous means of transportation around the cities in the Netherlands.")
tour_101_image = URI.open("https://images.unsplash.com/photo-1459679749680-18eb1eb37418?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YW1zdGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_102_image = URI.open("https://images.unsplash.com/photo-1524047934617-cb782c24e5f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YW1zdGVyZGFtfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_103_image = URI.open("https://images.unsplash.com/photo-1518622923628-f909e4f7c583?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_104_image = URI.open("https://images.unsplash.com/photo-1571164562995-ece3c663ef63?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_105_image = URI.open("https://images.unsplash.com/photo-1610912290426-bf5c338cc2a4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjh8fGFtc3RlcmRhbXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60")
tour_21.photos.attach(io: tour_101_image, filename: "tourimg101.png", content_type: "image/png")
tour_21.photos.attach(io: tour_102_image, filename: "tourimg102.png", content_type: "image/png")
tour_21.photos.attach(io: tour_103_image, filename: "tourimg103.png", content_type: "image/png")
tour_21.photos.attach(io: tour_104_image, filename: "tourimg104.png", content_type: "image/png")
tour_21.photos.attach(io: tour_105_image, filename: "tourimg105.png", content_type: "image/png")
tour_21.save!

tour_22 = Tour.create(user_id:2, name: "City Tour", city: "Sao Paulo", price: 199, category: "city tour", duration: "4", description: "In this tour you will see Brazil's largest city and its amazing culture.")
tour_106_image = URI.open("https://images.unsplash.com/photo-1543059080-f9b1272213d5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2FvJTIwcGF1bG98ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_107_image = URI.open("https://images.unsplash.com/photo-1598900923692-be0026a184ce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fHNhbyUyMHBhdWxvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_108_image = URI.open("https://images.unsplash.com/photo-1544788294-3ad830b5c3d7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjh8fHNhbyUyMHBhdWxvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_109_image = URI.open("https://images.unsplash.com/photo-1470160710819-b3bd5ec85c66?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzl8fHNhbyUyMHBhdWxvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_110_image = URI.open("https://images.unsplash.com/photo-1579642026628-a4106297a826?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTE3fHxzYW8lMjBwYXVsb3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_22.photos.attach(io: tour_106_image, filename: "tourimg106.png", content_type: "image/png")
tour_22.photos.attach(io: tour_107_image, filename: "tourimg107.png", content_type: "image/png")
tour_22.photos.attach(io: tour_108_image, filename: "tourimg108.png", content_type: "image/png")
tour_22.photos.attach(io: tour_109_image, filename: "tourimg109.png", content_type: "image/png")
tour_22.photos.attach(io: tour_110_image, filename: "tourimg110.png", content_type: "image/png")
tour_22.save!

tour_23 = Tour.create(user_id:2, name: "City Tour", city: "Rio de Janeiro", price: 199, category: "city tour", duration: "7", description: "In our Rio city tour you will see the most amazing touristic stops and the special sight seeing that you only get with tour of the day!")
tour_111_image = URI.open("https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cmlvJTIwZGUlMjBqYW5laXJvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_112_image = URI.open("https://images.unsplash.com/photo-1583275479278-7bc72a16c2ae?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8cmlvJTIwZGUlMjBqYW5laXJvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_113_image = URI.open("https://images.unsplash.com/photo-1594749794764-717b02dbb530?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fHJpbyUyMGRlJTIwamFuZWlyb3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_114_image = URI.open("https://images.unsplash.com/photo-1605648373083-7cb241939ae8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fHJpbyUyMGRlJTIwamFuZWlyb3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_115_image = URI.open("https://images.unsplash.com/photo-1543958871-ccfa180a0c39?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTN8fHJpbyUyMGRlJTIwamFuZWlyb3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_23.photos.attach(io: tour_111_image, filename: "tourimg111.png", content_type: "image/png")
tour_23.photos.attach(io: tour_112_image, filename: "tourimg112.png", content_type: "image/png")
tour_23.photos.attach(io: tour_113_image, filename: "tourimg113.png", content_type: "image/png")
tour_23.photos.attach(io: tour_114_image, filename: "tourimg114.png", content_type: "image/png")
tour_23.photos.attach(io: tour_115_image, filename: "tourimg115.png", content_type: "image/png")
tour_23.save!

tour_24 = Tour.create(user_id:2, name: "Foz do Iguaçu", city: "Iguaçu", price: 120, category: "city tour", duration: "6", description: "The most wow waterfall in south america, with this tour you have the option to see the Foz do Iguaçu from the Brazilian side or if you can and want we can also cross to argentina where it also shows and amazing angle for the water fall.")
tour_116_image = URI.open("https://images.unsplash.com/photo-1545832063-74f2d924b61a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGZveiUyMGRvJTIwaWd1YWN1fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_117_image = URI.open("https://images.unsplash.com/photo-1574630121065-b420516424c4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80")
tour_118_image = URI.open("https://images.unsplash.com/photo-1575323543893-8ed59cf6d2c1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80")
tour_119_image =URI.open("https://images.unsplash.com/photo-1605784893435-95a45d7ef5e4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjR8fGZveiUyMGRvJTIwaWd1YSVDMyVBN3V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_120_image = URI.open("https://images.unsplash.com/photo-1575324170566-0db95a8b2a75?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzJ8fGZveiUyMGRvJTIwaWd1YSVDMyVBN3V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
tour_24.photos.attach(io: tour_116_image, filename: "tourimg116.png", content_type: "image/png")
tour_24.photos.attach(io: tour_117_image, filename: "tourimg117.png", content_type: "image/png")
tour_24.photos.attach(io: tour_118_image, filename: "tourimg118.png", content_type: "image/png")
tour_24.photos.attach(io: tour_119_image, filename: "tourimg119.png", content_type: "image/png")
tour_24.photos.attach(io: tour_120_image, filename: "tourimg120.png", content_type: "image/png")
tour_24.save!

puts "Tour created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Deleting db'
User.destroy_all


require "open-uri"

20.times do
  puts 'Opening unsplash'
  file = URI.open("https://source.unsplash.com/random/300x300/?face")
  puts file
  puts 'Creating user'
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), address: Faker::Address.city, bio: Faker::Lorem.word )
  puts user.id
  puts 'Attaching photo'
  user.photo.attach(io: file, filename: user.first_name, content_type: "image/jpg")
  puts 'done!'
end

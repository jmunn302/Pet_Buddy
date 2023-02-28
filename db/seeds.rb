# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Deleting db'
User.destroy_all
Pet.destroy.all


require "open-uri"

20.times do
  file = URI.open("https://source.unsplash.com/random/300x300/?face")
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), address: Faker::Address.city, bio: Faker::Lorem.word )
  user.photo.attach(io: file, filename: user.first_name, content_type: "image/jpg")
end

@users = User.all
ids = []
@users.each do |user|
  ids << user.id
end

20.times do
puts "creating pets"
pet = Pet.create!(name: Faker::Artist.name, species: ["Yeti", "Dragon", "Unicorn", "Robot", "Dinosaur", "Monster"].sample, gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: Faker::Lorem.word, special_notes: Faker::Lorem.word, price: Faker::Number.number(digits: 2), user_id: ids.sample)
puts "pets created"
end

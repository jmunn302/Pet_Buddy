# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Deleting db'
Pet.destroy_all
User.destroy_all



require "open-uri"

18.times do
  file = URI.open("https://source.unsplash.com/random/300x300/?face")
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), address: Faker::Address.full_address, bio: Faker::Lorem.paragraphs(number: 1) )
  user.photo.attach(io: file, filename: user.first_name, content_type: "image/jpg")
end

@users = User.all
ids = []
@users.each do |user|
  ids << user.id
end

file = URI.open("app/assets/images/3d-rendering-yeti-copy.jpg")
pet = Pet.create!(name: Faker::Creature::Cat.name, species: "Yeti", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "A fun loving Yeti who will bring joy to your life! He loves music, giving gifts, and doing yoga every morning.", special_notes: "Very Introverted", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/green-robot-illustration.jpg")
pet = Pet.create!(name: "Gregorio", species: "Robot", gender: "Male", age: 18, description: "Some people call this robot the traplord. Drip like a leaky faucet, swag like soulja boy.", special_notes: "Will eat all your snacks!", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "Gregorio.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/8262014.jpg")
pet = Pet.create!(name: "Sara", species: "Dragon", gender: "Female", age: 32, description: "Super sweet and friendly magical dragon! Great sense of humor, and will make you delicious veggie dishes.", special_notes: "Vegetarian", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "sara.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/fun-unicorn-3d-illustration3.jpg")
pet = Pet.create!(name: "Gonzolo", species: "Unicorn", gender: "Male", age: 35, description: "Your new unicorn bestie! Loves music, art and especially DANCING!", special_notes: "Bit of a sweet tooth, but willing to share", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "gonzo.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/739.jpg")
pet = Pet.create!(name: "Pierre", species: "Monster", gender: "Male", age: 23, description: "A cool monster, who is a bit of a workaholic, but he looooves his weekends. Beast with backend code.", special_notes: "Sings karaoke under his breath at all times", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "pierre.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/3d-rendering-yeti2.jpg")
pet = Pet.create!(name: "Leo", species: "Yeti", gender: "Male", age: 56, description: "This yeti is a little on the quiet side, but don't let that fool you! He's a great guy, who is super helpful and has a great sense of humor.", special_notes: "Needs an occasional lunchtime nap", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "leo.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/Funny_ghosts_slime_.png")
pet = Pet.create!(name: "Emilia", species: "Monster", gender: "Female", age: 18, description: "Adorable slime monster who is super sweet, funny and smart and... bonus! Her boyfriend is included at no extra charge!", special_notes: "BOYFRIEND. Not brother, or friend, or cousin", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "emilia.png", content_type: "image/png")

file = URI.open("app/assets/images/fun-dragon-animation1.jpg")
pet = Pet.create!(name: "Julie", species: "Dragon", gender: "Female", age: 36, description: "This fire-breathing dragon is big, loud and a bit clumsy. But she means well! Needs to eat every two hours or she gets very cranky.", special_notes: "American", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "julie.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/elf23.jpg")
pet = Pet.create!(name: "August", species: "Gnome", gender: "Male", age: 20, description: "Scandinavian creature, who likes to wear a hat. Will sing karaoke if given the chance.", special_notes: "Says he doesn't like ABBA, but he's lying", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "august.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/fun-zombie-3d-illustration1.jpg")
pet = Pet.create!(name: Faker::Creature::Cat.name, species: "Zombie", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "Very loving, just wants to be friends. Not a morning person.", special_notes: "Allergic to cats", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/fun-unicorn-illustration.jpg")
pet = Pet.create!(name: Faker::Creature::Cat.name, species: "Unicorn", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "Super into finance and the economy, especially Bitcoin. Will help you sort out all your investments and explain what blockchain actually means.", special_notes: "Is afraid of birds, please don't ask about it.", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/big-robot-3d-illustration1.jpg")
pet = Pet.create!(name: Faker::Creature::Dog.name, species: "Robot", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "Only speaks in 'beeps' and 'boops' but is actually VERY into classic literature. Loves to bake, especially for new friends!", special_notes: "Gluten intolerance", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/cute-monster.jpg")
pet = Pet.create!(name: Faker::Creature::Dog.name, species: "Monster", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "Looking for someone to travel with, especially to any of the Disney parks all around the world!", special_notes: "Hates scary movies", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/3d-rendering-yeti4.jpg")
pet = Pet.create!(name: Faker::Creature::Dog.name, species: "Yeti", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "A totally gnarly surfer, looking for a bud to ride some waves with! Loves the sun, the beach, and the wind in their fur.", special_notes: "Allergic to peanut butter. Bummer, bro.", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/fun-zombie-animation.jpg")
pet = Pet.create!(name: Faker::Creature::Cat.name, species: "Zombie", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "Spends most days rewatching old episodes of The Office, and crocheting blankets for friends.", special_notes: "Vegan", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/rafa-sanchis-render-alien.jpg")
pet = Pet.create!(name: Faker::Creature::Cat.name, species: "Monster", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "VERY shy, needs someone to help break them out of their shell. Really looking for a friend with whom they can see eye to eye.", special_notes: "Afraid of cats, dogs, and children", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/fun-trex-3d-illustration1.jpg")
pet = Pet.create!(name: Faker::Creature::Dog.name, species: "Dragon", gender: "Male", age: Faker::Number.number(digits: 2), description: "This crazy guy is the best! He's the life of every party, super silly and outgoing!", special_notes: "Needs space to store his bike", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/elf28.png")
pet = Pet.create!(name: Faker::Creature::Dog.name, species: "Gnome", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "Writes beat poetry, and then performs it via interpretive dance.", special_notes: "Never wakes up before 10 am.", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/png")

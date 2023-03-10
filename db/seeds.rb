# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Deleting db'
Booking.destroy_all
Pet.destroy_all
User.destroy_all



require "open-uri"

18.times do
  file = URI.open("https://source.unsplash.com/random/300x300/?face")
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), address: "68 Shore Drive Brewster NY 10509 USA" , bio: Faker::Lorem.paragraphs(number: 1) )
  user.photo.attach(io: file, filename: user.first_name, content_type: "image/jpg")
end


  file = URI.open("app/assets/images/Julie.jpeg")
  user = User.create(first_name: "Julie", last_name: "Munn", email: "jmunnmdesign@gmail.com", encrypted_password: "Arizona1!", address: "76 16th St Brooklyn NY 11215 USA" , bio: "Creative living in Madrid, looking to make friends!" )
  user.photo.attach(io: file, filename: user.first_name, content_type: "image/jpg")



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
pet = Pet.create!(name: "Gonzalo", species: "Unicorn", gender: "Male", age: 35, description: "Your new unicorn bestie! Loves music, art and especially DANCING!", special_notes: "Bit of a sweet tooth, but willing to share", price: Faker::Number.number(digits: 2), user_id: ids.sample)
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

file = URI.open("app/assets/images/608_720.jpg")
pet = Pet.create!(name: "Isa", species: "Monster", gender: "Female", age: 28, description: "Super sweet and smart teacher who loves to sing karaoke especially with her special microphone", special_notes: "Loves Margaritas", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "isa.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/tsundzukani-mabaso-rainbow-horn-fifth-pass.jpg")
pet = Pet.create!(name: "Emi", species: "Monster", gender: "Female", age: 29, description: "Super high energy and always loves controversial topics", special_notes: "Needs a dogfriendly household because she doesn't travel without Carlota!", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "emi.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/fun-unicorn-3d-illustration.jpg")
pet = Pet.create!(name: "Agos", species: "Unicorn", gender: "Female", age: 24, description: "Super strong, super smart, super funny - the whole package! Just don't mess with her, she can beat you up!", special_notes: "Needs space to do crossfit daily", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "agos.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/cute-monster.jpg")
pet = Pet.create!(name: "Juliette", species: "Fur Monster", gender: "Female", age: 25, description: "Stylish, tall, smart and very french! In a good way.", special_notes: "Will talk politics, if asked", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "juliette.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/mickael-lelievre-pukypuky-03.jpg")
pet = Pet.create!(name: "Lancelot", species: "Lizard", gender: "Male", age: 25, description: "The friendliest lizard monster around. This guy will be the life of the party, and always make you laugh. Just don't ask him to speak Spanish... or Dutch!", special_notes: "Belgian, even though he sounds French", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "lancelot.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/3d-rendering-yeti.jpg")
pet = Pet.create!(name: "Amine", species: "Yeti", gender: "Male", age: 32, description: "This fun loving Yeti loves to ski and to travel, and can give you a great tour of Madrid if you're new in town!", special_notes: "Don't ask him to do your taxes...", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "Amine.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/fun-dinosaur-3d-illustration.jpg")
pet = Pet.create!(name: "Noah", species: "Monster", gender: "Male", age: 19, description: "This weird green monster is obsessed with football and loves to play chess during lectures (just kidding!).", special_notes: "Can be really annoying", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "Noah.jpg", content_type: "image/jpg")

file = URI.open("app/assets/images/3d-rendering-yeti-copy.jpg")
pet = Pet.create!(name: Faker::Creature::Cat.name, species: "Yeti", gender: Faker::Gender.type, age: Faker::Number.number(digits: 2), description: "A fun loving Yeti who will bring joy to your life! He loves music, giving gifts, and doing yoga every morning.", special_notes: "Very Introverted", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: pet.name, content_type: "image/jpg")

file = URI.open("app/assets/images/cute-monster1.jpg")
pet = Pet.create!(name: "Nicole", species: "Fuzzy Monster", gender: "Female", age: 25, description: "Smart and colorful monster, who will teach you data and also take you to the most delicious vegan lunch!", special_notes: "Needs occasional lunchtime nap", price: Faker::Number.number(digits: 2), user_id: ids.sample)
pet.photo.attach(io: file, filename: "Nicole.jpg", content_type: "image/jpg")


puts "I'm done, yay!"

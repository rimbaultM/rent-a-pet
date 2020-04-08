# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Pet.destroy_all
User.destroy_all


paul = User.new( email: "paul@mail.com", username: "Paulo", phone_number: "0659868756", address: "Brest", password: "azerty")
paul.save!

bernard = User.new( email: "bibi@mail.com", username: "Bibi", phone_number: "0659598756", address: "Rennes", password: "azertyu")
bernard.save!

cat = Pet.new( user: User.last,
               name: 'Minou',
               species: 'chat',
               description: "Igor est un crabe intelligent et sage, il adore qu'on lui nettoie les pinces après son lunch",
               price_per_day: 32)

cat.photo.attach(io:File.open('db/fixtures/pets/cat_1.jpg'), filename: 'cat_1.jpg', content_type: 'image/jpg')
cat.save!


crabe = Pet.new( user: User.last,
               name: 'Igor',
               species: 'Crabe',
               description: "Igor est un crabe intelligent et sage, il adore qu'on lui nettoie les pinces après son lunch",
               price_per_day: 47)

crabe.photo.attach(io:File.open('db/fixtures/pets/crabe_1.jpg'), filename: 'crabe_1.jpg', content_type: 'image/jpg')
crabe.save!

chien = Pet.new( user: User.first,
               name: 'Hector',
               species: 'chien',
               description: "Igor est un crabe intelligent et sage, il adore qu'on lui nettoie les pinces après son lunch",
               price_per_day: 35)

chien.photo.attach(io:File.open('db/fixtures/pets/dog_1.jpg'), filename: 'dog_1.jpg', content_type: 'image/jpg')
chien.save!



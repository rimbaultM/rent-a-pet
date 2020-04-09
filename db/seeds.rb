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


paul = User.new( email: "paul@mail.com", username: "Paul", phone_number: "0659868756", address: "Brest", password: "azerty")
paul.photo.attach(io:File.open('db/fixtures/users/paul.jpg'), filename: 'paul.jpg', content_type: 'image/jpg')
paul.save!



bernard = User.new( email: "bibi@mail.com", username: "Bernard", phone_number: "0659598756", address: "Rennes", password: "azerty")
bernard.photo.attach(io:File.open('db/fixtures/users/bernard.jpg'), filename: 'bernard.jpg', content_type: 'image/jpg')
bernard.save!

lucas = User.new( email: "lucas@mail.com", username: "Lucas", phone_number: "0659598756", address: "brest", password: "azerty")
lucas.photo.attach(io:File.open('db/fixtures/users/lucas.jpg'), filename: 'lucas.jpg', content_type: 'image/jpg')
lucas.save!

jacob = User.new( email: "jacob@mail.com", username: "jacob", phone_number: "0659598756", address: "brest", password: "azerty")
jacob.photo.attach(io:File.open('db/fixtures/users/jacob.jpg'), filename: 'jacob.jpg', content_type: 'image/jpg')
jacob.save!

cat = Pet.new( user: bernard,
               name: 'Minou',
               species: 'Chat',
               description: "Minou est un chat au pelage soyeux, et très câlin. Il saura vous relaxer avec ses ronronnements. Très obéissant, vous apprecierez vous balader avec lui.",
               price_per_day: 82)
cat_photo = File.open(Rails.root.join('db/fixtures/pets/cat_1.jpg'))
cat.photo.attach(io:cat_photo, filename: 'cat_1.jpg', content_type: 'image/jpg')
cat.save!

crabe = Pet.new( user: bernard,
               name: 'Igor',
               species: 'Crabe',
               description: "Igor est un crabe intelligent et sage, il adore qu'on lui nettoie les pinces après son brunch",
               price_per_day: 47)
crabe_photo = File.open(Rails.root.join('db/fixtures/pets/crabe_1.jpg'))
crabe.photo.attach(io:crabe_photo, filename: 'crabe_1.jpg', content_type: 'image/jpg')
crabe.save!

chien = Pet.new( user: paul,
               name: 'Hector',
               species: 'Chien',
               description: "Hector sera votre meilleur ami. Très joueur, il appreciera sortir et courrir avec vous",
               price_per_day: 35)
chien_photo = File.open(Rails.root.join('db/fixtures/pets/dog_1.jpg'))
chien.photo.attach(io:chien_photo, filename: 'dog_1.jpg', content_type: 'image/jpg')
chien.save!

elephant = Pet.new( user: paul,
               name: 'Dumbo',
               species: 'Elephant',
               description: "Ne vous fiez pas à sa taille, il sait se faire petit. Il adore se promener et s'amuser à l'exterieur. Dumbo est parfait pour jouer avec les enfants.",
               price_per_day: 82)
elephant_photo = File.open(Rails.root.join('db/fixtures/pets/elephant_1.jpg'))
elephant.photo.attach(io:elephant_photo, filename: 'elephant_1.jpg', content_type: 'image/jpg')
elephant.save!

poulet = Pet.new( user: bernard,
               name: 'Chuck',
               species: 'Poulet',
               description: "Chuck est un poulet intelligent et sage, il adore qu'on lui nettoie les pattes après son lunch",
               price_per_day: 16)
poulet_photo = File.open(Rails.root.join('db/fixtures/pets/poulet_1.jpg'))
poulet.photo.attach(io:poulet_photo, filename: 'poulet_1.jpg', content_type: 'image/jpg')
poulet.save!

panda = Pet.new( user: bernard,
               name: 'Pandee',
               species: 'Panda',
               description: "Pandee est un petit panda de chine, il n'est pas très rapide et adore dormir. Il vous donnera du réconfort dans votre journée ",
               price_per_day: 48)
panda_photo = File.open(Rails.root.join('db/fixtures/pets/panda_1.jpg'))
panda.photo.attach(io:panda_photo, filename: 'panda_1.jpg', content_type: 'image/jpg')
panda.save!

reservation1 = Reservation.create(pet: cat, user: jacob, start_date: Date.new(2020,2,25), end_date: Date.new(2020,2,27), status: 'Terminée', total_price: 64)
reservation2 = Reservation.create(pet: elephant, user: jacob, start_date: Date.new(2020,4,12), end_date: Date.new(2020,4,14), status: 'En attente de validation', total_price: 164)

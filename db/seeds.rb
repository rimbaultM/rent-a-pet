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


pierref = User.new( email: "pierref@mail.com", username: "Pierre", phone_number: "0659868756", address: "Brest", password: "azerty")
pierref.photo.attach(io:File.open('db/fixtures/users/pierre.jpg'), filename: 'pierre.jpg', content_type: 'image/jpg')
pierref.save!

lomig = User.new( email: "lomig@mail.com", username: "lomig", phone_number: "0659598756", address: "Rennes", password: "azerty")
lomig.photo.attach(io:File.open('db/fixtures/users/lomig.jpg'), filename: 'lomig.jpg', content_type: 'image/jpg')
lomig.save!

pierreg = User.new( email: "pierreg@mail.com", username: "Pierre G", phone_number: "0659598756", address: "brest", password: "azerty")
pierreg.photo.attach(io:File.open('db/fixtures/users/pierreg.jpg'), filename: 'pierreg.jpg', content_type: 'image/jpg')
pierreg.save!

hugo = User.new( email: "hugo@mail.com", username: "hugo", phone_number: "0659598756", address: "brest", password: "azerty")
hugo.photo.attach(io:File.open('db/fixtures/users/hugo.jpg'), filename: 'hugo.jpg', content_type: 'image/jpg')
hugo.save!

jj = User.new( email: "jj@mail.com", username: "jj", phone_number: "0659598756", address: "brest", password: "azerty")
jj.photo.attach(io:File.open('db/fixtures/users/jj.jpg'), filename: 'jj.jpg', content_type: 'image/jpg')
jj.save!

remi = User.new( email: "remi@mail.com", username: "remi", phone_number: "0659598756", address: "brest", password: "azerty")
remi.photo.attach(io:File.open('db/fixtures/users/remi.jpg'), filename: 'remi.jpg', content_type: 'image/jpg')
remi.save!



cat = Pet.new( user: pierref, # ok
               name: 'Minou',
               address: "112 boulevard jacques Cartier, rennes",
               species: 'Chat',
               description: "Minou est un chat au pelage soyeux, et très câlin. Il saura vous relaxer avec ses ronronnements. Très obéissant, vous apprecierez vous balader avec lui.",
               price_per_day: 82)
cat_photo = File.open(Rails.root.join('db/fixtures/pets/cat_1.jpg'))
cat.photo.attach(io:cat_photo, filename: 'cat_1.jpg', content_type: 'image/jpg')
cat.save!

crabe = Pet.new( user: lomig,
               name: 'Igor',
               address: "56 boulevard de la republique, rennes",
               species: 'Crabe',
               description: "Igor est un crabe intelligent et sage, il adore qu'on lui nettoie les pinces après son brunch",
               price_per_day: 47)
crabe_photo = File.open(Rails.root.join('db/fixtures/pets/crabe_1.jpg'))
crabe.photo.attach(io:crabe_photo, filename: 'crabe_1.jpg', content_type: 'image/jpg')
crabe.save!


dog = Pet.new( user: pierreg,
                name:"Hector",
                address: "40 place du colombier, rennes",
                species: "chien",
                description: "Hector sera votre meilleur ami. Très joueur, il appreciera sortir et courrir avec vous",
                price_per_day: 82)
dog_photo = File.open(Rails.root.join('db/fixtures/pets/dog_1.jpg'))
dog.photo.attach(io:dog_photo, filename: 'dog_1.jpg', content_type: 'image/jpg')
dog.save!



elephant = Pet.new( user: hugo,
               name: 'Dumbo',
               address: "10 rue du Vau Saint-germain, rennes",
               species: 'Elephant',
               description: "Ne vous fiez pas à sa taille, il sait se faire petit. Il adore se promener et s'amuser à l'exterieur. Dumbo est parfait pour jouer avec les enfants.",
               price_per_day: 82)
elephant_photo = File.open(Rails.root.join('db/fixtures/pets/elephant_1.jpg'))
elephant.photo.attach(io:elephant_photo, filename: 'elephant_1.jpg', content_type: 'image/jpg')
elephant.save!

poulet = Pet.new( user: remi, #ok
               name: 'Chuck',
               address: '17 rue vasselot, rennes',
               species: 'Poulet',
               description: "Chuck est un poulet intelligent et sage, il adore qu'on lui nettoie les pattes après son lunch",
               price_per_day: 16)
poulet_photo = File.open(Rails.root.join('db/fixtures/pets/poulet_1.jpg'))
poulet.photo.attach(io:poulet_photo, filename: 'poulet_1.jpg', content_type: 'image/jpg')
poulet.save!


panda = Pet.new( user: jj, # ok
               name: 'Pandee',
               address: '5 rue de la monnaie, rennes',
               species: 'panda',
               description: "Pandee est un petit panda de chine, il n'est pas très rapide et adore dormir. Il vous donnera du réconfort dans votre journée",
               price_per_day: 48)
panda_photo = File.open(Rails.root.join('db/fixtures/pets/panda_1.jpg'))
panda.photo.attach(io:panda_photo, filename: 'panda_1.jpg', content_type: 'image/jpg')
panda.save!



reservation1 = Reservation.create(pet: cat, user: pierref, start_date: Date.new(2020,2,25), end_date: Date.new(2020,2,27), status: 'Terminée', total_price: 64)
reservation2 = Reservation.create(pet: elephant, user: lomig, start_date: Date.new(2020,4,12), end_date: Date.new(2020,4,14), status: 'En attente de validation', total_price: 164)





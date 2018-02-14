# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating 10 fake flats...'
10.times do
  Flat.create!(
    name: Faker::Name.unique.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.sentence(1),
    price_per_night: Faker::Number.between(30, 800),
    number_of_guests: Faker::Number.between(1, 8),
    picture: "https://picsum.photos/200/300/?random"
    )
end
puts 'Finished!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  City.create(city_name: Faker::Address.city)
end
10.times do
	Dog.create(name: Faker::Games::Pokemon.name, city_id: rand(1..2))
end
10.times do
	DogSitter.create(name: Faker::Games::WorldOfWarcraft.hero, city_id: rand(1..2))
end
10.times do
	stroll = Stroll.create(dog_id: rand(1..10), dog_sitter_id: rand(1..4))
end
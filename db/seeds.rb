

puts "Destroying Galaxy"
Galaxy.destroy_all
World.destroy_all
Region.destroy_all

require 'faker'

puts "Creating Galaxies"

g1 = Galaxy.create(galaxy_name: "Rock Bottom")

puts "Creating Worlds"

w1 = World.create(name_of_world: Faker::Ancient.god, discovered_year: Faker::Number.within(range: 2500..4000), galaxy: g1)
w2 = World.create(name_of_world: Faker::Ancient.god, discovered_year: Faker::Number.within(range: 2500..4000), galaxy: g1)
w3 = World.create(name_of_world: Faker::Ancient.god, discovered_year: Faker::Number.within(range: 2500..4000), galaxy: g1)
w4 = World.create(name_of_world: Faker::Ancient.god, discovered_year: Faker::Number.within(range: 2500..4000), galaxy: g1)
w5 = World.create(name_of_world: Faker::Ancient.god, discovered_year: Faker::Number.within(range: 2500..4000), galaxy: g1)

puts "Creating Regions"

r1 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 4), world: w1, industrialized: true)
r2 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 8), world: w1, industrialized: true)
r3 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 2), world: w2, industrialized: false)
r4 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 5), world: w2, industrialized: true)
r5 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 3), world: w3, industrialized: false)
r6 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 5), world: w3, industrialized: true)
r7 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 5), world: w4, industrialized: true)
r8 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 6), world: w4, industrialized: true)
r9 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 3), world: w5, industrialized: false)
r10 = Region.create(name: Faker::Games::Pokemon.location, chief: Faker::Name.name, weather_person: Faker::Name.name, prominent_species: Faker::Movies::StarWars.specie, population: Faker::Number.number(digits: 5), world: w5, industrialized: true)

puts "✅ Done creating!"

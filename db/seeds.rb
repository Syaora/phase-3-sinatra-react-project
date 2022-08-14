puts "🌱 Seeding spices..."

# Seed your database here

ash = Trainer.create(name: "Ash", hometown: "Pallet Town")
liza = Trainer.create(name: "Liza", hometown: "Charicific Valley")
lana = Trainer.create(name: "Lana", hometown: "Lavender Town")
regina = Trainer.create(name: "Regina", hometown: "Pewter City")

Pokemon.create(species: "Pikachu", name: "Pikachu", trainer_id: ash.id, url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/25.svg")
Pokemon.create(species: "Bulbasaur", name: "Bulbasaur", trainer_id: ash.id, url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg")
Pokemon.create(species: "Glaceon", name: "Mirche", trainer_id: regina.id, url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/471.svg")
Pokemon.create(species: "Lapras", name: "Lapras", trainer_id: lana.id, url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/131.svg")
Pokemon.create(species: "Charizard", name: "Charla", trainer_id: liza.id, url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/6.svg")
Pokemon.create(species: "Pikachu", name: "Sparky", trainer_id: liza.id, url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/25.svg")


puts "✅ Done seeding!"

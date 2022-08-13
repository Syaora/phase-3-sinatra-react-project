puts "🌱 Seeding spices..."

# Seed your database here

ash = Trainer.create(name: "Ash", hometown: "Pallet Town")
liza = Trainer.create(name: "Liza", hometown: "Charicific Valley")
lana = Trainer.create(name: "Lana", hometown: "Lavender Town")
regina = Trainer.create(name: "Regina", hometown: "Pewter City")

Pokemon.create(species: "Pikachu", name: "Pikachu", trainer_id: ash.id)
Pokemon.create(species: "Bulbasaur", name: "Bulbasaur", trainer_id: ash.id)
Pokemon.create(species: "Glaceon", name: "Mirche", trainer_id: regina.id)
Pokemon.create(species: "Lapras", name: "Lapras", trainer_id: lana.id)
Pokemon.create(species: "Charizard", name: "Charla", trainer_id: liza.id)
Pokemon.create(species: "Pikachu", name: "Sparky", trainer_id: liza.id)


puts "✅ Done seeding!"

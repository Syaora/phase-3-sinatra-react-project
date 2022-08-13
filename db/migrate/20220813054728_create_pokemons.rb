class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :species
      t.string :name
      t.integer :trainer_id
    end
  end
end

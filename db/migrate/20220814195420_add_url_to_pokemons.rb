class AddUrlToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :url, :string
  end
end

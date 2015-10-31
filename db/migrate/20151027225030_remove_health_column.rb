class RemoveHealthColumn < ActiveRecord::Migration
  def change
  	remove_column :pokemons, :health
  end
end

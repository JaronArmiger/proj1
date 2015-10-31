class RemoveDefaultHealth < ActiveRecord::Migration
  def change
  	change_column :pokemons, :health, :integer
  end
end

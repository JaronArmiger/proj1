class SetDefaultHealth < ActiveRecord::Migration
  def change
  	change_column :pokemons, :health, :integer, :default => 100
  end
end

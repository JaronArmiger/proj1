class SetDefaultLevel < ActiveRecord::Migration
  def change
  	change_column :pokemons, :level, :integer, :default => 1
  end
end

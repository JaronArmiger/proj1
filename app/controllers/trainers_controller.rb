class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemons = @trainer.pokemons
  end
  def update
    @trainer = Trainer.find(params[:id])
    
    redirect_to new_pokemon_path
end

end

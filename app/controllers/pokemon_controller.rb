class PokemonController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end
	def damage
		@trainer = Trainer.find(params[:trainer_id])
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update(:health => @pokemon.health - 10)
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(@trainer)
	end
	def new
		@pokemon = Pokemon.new
	end
	def create
		Pokemon.create pokemon_params
		@pokemon = Pokemon.last
		@pokemon.trainer = current_trainer
		if @pokemon.save
		  redirect_to trainer_path(current_trainer)
		else
	      flash[:error] = @pokemon.errors.full_messages.to_sentence
	      render 'new'
	  end
	end
	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end


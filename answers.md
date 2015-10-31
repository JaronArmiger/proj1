# Q0: Why is this error being thrown?
because there was no Pokemon model
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
@pokemon is a random pokemon from trainerless_pokemon, which includes all pokemon for whom the trainer is nil
# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
  <%= button_to "Throw a Pokeball", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>
It creates a button called "Throw a Pokeball".  When the button is clicked, it routes to the capture_path: capture/:id.  We gave capture_path the argument "id: @pokemon", so it will take the id of the wild pokemon on the home page and give it to the pokemon controller.
# Question 3: What would you name your own Pokemon?
Porzingod
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed it trainer_path.  I'm not sure what the second part of this quesiton is asking.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

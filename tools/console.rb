require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# Pry.start

# ## seed data for IMDB Lab
# sharknado = Movie.new("Sharknado")
# prejudice = Movie.new("Pride & Prejudice")
# shrek = Movie.new("Shrek")

# got = Show.new("Game of Thrones")
# btvs = Show.new("Buffy the Vampire Slayer")

# gellar = Actor.new("Sarah Michelle Gellar")
# dinklage = Actor.new("Peter Dinklage")


# ##seed data for crowdfunding lab
# helen = User.new("Helen")
# rosie = User.new("Rosie")
# kas = User.new("Kaspar")

# dice = Project.new("Awesome Dice", helen, 500)
# plush = Project.new("The Softest Plush", rosie, 6000)

# kas_pledge_1 = Pledge.new(kas, dice, 25)
# kas_pledge_2 = Pledge.new(kas, plush, 50)
# rosie_pledge_1 = Pledge.new(rosie, plush, 500)
# helen_pledge_1 = Pledge.new(helen, plush, 250)

##seed data for gym lab
seattle = Location.new("Seattle")
shoreline = Location.new("Shoreline")
edmonds = Location.new("Edmonds")

helen = Client.new("Helen")
rosie = Client.new("Rosie")
kas = Client.new("Kaspar")

thomas = Trainer.new("Thomas")
kaelin = Trainer.new("Kaelin")
bull = Trainer.new("The Iron Bull")

helen.assign_trainer(bull)
bull.add_location(seattle)
bull.add_location(edmonds)

binding.pry
000
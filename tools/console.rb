require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# Pry.start


sharknado = Movie.new("Sharknado")
prejudice = Movie.new("Pride & Prejudice")
shrek = Movie.new("Shrek")

got = Show.new("Game of Thrones")
btvs = Show.new("Buffy the Vampire Slayer")

gellar = Actor.new("Sarah Michelle Gellar")
dinklage = Actor.new("Peter Dinklage")

buffy = btvs.cast_character("Buffy Summers", "Sarah Michelle Gellar")


binding.pry
000
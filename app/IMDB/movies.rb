class Movie
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def Movie.all
        @@all
    end

    def Movie.movie_names
        #returns an array of just the names of all movies that exist
        movie_names = Movie.all.collect do |movie|
            movie.name
        end
    end

    def add_character(character_name, actor="TBD")
        #associates a character to the movie, adding the movie to that character's movies list. If the character does not exist yet, it creates one
        if Character.character_names.include?(character_name)
            Character.find_by_name(character_name).join_production(self) 
        else
            Character.new(character_name, actor).join_production(self)
        end
    
            
    end

    def actors 
        #returns an array of all actors in the movie
        self.characters.collect do |character|
            character.actor
        end
    end

    def characters 
        #returns an array of all characters in the movie
        Character.all.select do |character|
            character.movies.include?(self)
        end
    end


    def Movie.most_actors
        # should return the movie which has the most actors in it. this is so the studio knows never to hire that director again because he/she makes expensive movies
        most = @@all[0]
        @@all.each do |movie|
            most = movie if movie.actors.length > most.actors.length
        end
    end

     ##Removed the below entirely as, i no longer think that you should be able to cast from this class. only from characters.

    # def cast_character(character_name, actor="TBD")
    #     #takes a character name and an actor and associates the actor, character, and movie together. if no such character exists, one will be made. accounts for character already being associated with the movie or not
    #     character = Character.find_by_name(character_name) 
    #     if Character.all.include?(character) && character.movies.include?(self) 
    #         character.cast_actor(actor.name)
    #     elsif Character.all.include?(character) && !character.movies.include?(self)
    #         character.cast_actor(actor.name)
    #         character.join_production(self)
    #     else
    #         Character.new(character_name, actor).join_production(self)
    #     end
    # end 

end
class Show
    attr_accessor :name #various

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def Show.all
        @@all
    end

    def add_character(character_name)
        if Character.find_by_name(character_name)
            puts "This character already exists!"
        else 
            newchar = Character.new(character_name)
            newchar.join_production(self)
            newchar
        end
    end

    

    def actors 
        #returns an array of all actors in the show
        self.characters.collect do |character|
            character.actor
        end
    end

    def characters 
        #returns an array of all characters in the show
        Character.all.select do |character|
            character.shows.include?(self)
        end
    end

    def has_film
        #returns true if this show shares a name with a movie
        Movie.movie_names.all.include?(self.name)
    end

    def Show.on_the_big_screen
        # should return TV shows that share the same name as a movie
        @@all.select do |show|
            show.has_film
        end
    end

    #removing the below entirely, as i now think you should only be able to cast characters thru the character class.
    # def cast_character(character_name, actor_name)
    #     #takes a character name and an actor name and associates the actor, character, and show together. if no such character or actor exists, one will be made. accounts for character already being associated with the show or not
        
    #     #first find or create the actor
    #     if Actor.actor_names.include?(actor_name)
    #         actor = Actor.find_by_name(actor_name)
    #     else
    #         actor = Actor.new(actor_name)
    #     end

    #     #then find or create the character
    #     if Character.names.include?(character_name)
    #         character = Character.find_by_name(character_name) #if the character exists, find its instance
    #     else 
    #         character = Character.new(character_name, actor)
    #     end

    #     #associate actor to character
    #     character.cast_actor(actor)

    #     #associate character to show if not already associated
    #     if !character.shows.include?(self)
    #         character.join_production(self)
    #     end
    # end
end
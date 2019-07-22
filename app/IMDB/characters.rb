class Character
    attr_reader :name
    attr_accessor :movies, :shows, :actor

    @@all = []

    def initialize(name, actor="TBD")
        @name = name
        @actor = actor
        @movies = []
        @shows = []
        @@all << self
    end

    def Character.all
        @@all
    end

    def Character.character_names
        #returns an array of the names of all characters that exist
        @@all.collect do |character|
            character.name
        end
    end

    def Character.find_by_name(character_name)
        #uses character name to retrieve a character instance
        @@all.find do |char|
            char.name == character_name
        end
    end

    def join_production(production)
        #adds the provided movie or show instance to the character's list of movies or shows, and associates that movie or show with the character
        if production.class == Movie 
            @movies << production
        elsif production.class == Show
            @shows << production
        end
    end

    def cast_actor(actor_name)
        #takes an actor name
        #if that actor exists, associates that actor to this character
        #if that actor does not exist, creates them and then makes the association
        if Actor.actor_names.include?(actor_name)
            self.actor = Actor.find_by_name(actor_name)
        else
            self.actor = Actor.new(actor_name)
        end
    end

    def appearances
        #returns an array of all shows and movies the character has been in
        appearances = @shows << @movies
        appearances.flatten
    end

    def Character.most_appearances
        # should return which character of film/television appears in the most films or tv shows
        most = @@all[0]
        @@all.each do |character|
            most = character if character.appearances.length > most.appearances.length
        end
        most
    end
end
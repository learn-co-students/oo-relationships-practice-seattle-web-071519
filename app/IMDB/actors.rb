class Actor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def Actor.all
        @@all
    end

    def accept_role(character)
        character.actor = self
    end

    def Actor.actor_names
        #returns an array of the names of all actors
        Actor.all.collect do |actor|
            actor.name
        end
    end

    def Actor.find_by_name(actor_name)
        #uses actor name to retrieve an actor instance
        @@all.find do |actor|
            actor.name == actor_name
        end
    end

    def characters
        #returns an array of all characters this actor has played
        Character.all.collect do |char|
            char.actor = self
        end
    end

    def shows
        #returns array of all show instances the actor has been in
        show_list = self.characters.collect do |char|
            char.shows
        end
        show_list.flatten
    end

    def movies
        #returns an array of all show instances the actor has been in
        movie_list = self.characters.collect do |char|
            char.movies
        end
        movie_list.flatten
    end

    def appearances
        #returns an array of all shows & movies the actor has been in
        appearances = self.shows << self.movies
        appearances.flatten
    end

    def Actor.most_characters
        # should return which actor has the most different characters played. (probably meryl streep)
        most = @@all[0]
        @@all.each do |actor|
            most = actor if actor.characters.length > most.characters.length
        end
        most
    end

end
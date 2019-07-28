class Trip
    attr_accessor :listing, :guest
    @@all = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end
    #class
    def self.all
        @@all
    end
    #instance

end
class Listing
    attr_accessor :city, :home
    
    @@all = []

    def initialize(city, home)
        @city = city
        @home = home
        @@all << self
    end
#class methods
    #self.all
    #self refers to the class itself - 
    #in this example Listing
    #in self class methods self refers to class
    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        @@all.select {|listing| listing.city == city }
    end

    def self.most_popular
        listings = Trip.all.map {|trip| trip.listing}
       listings.max_by {|listing| listings.count(listing) }
        #pets.max_by { |i| pets.count(i)}

    end


#instance methods
    def guests
        trips = Trip.all.select {|trip| trip.listing == self}
        trips.map {|trip| trip.guest} 
    end
    #change size with select/filter
    #change contents with map/collect
    def trips
        Trip.all.filter {|trip| trip.listing == self}

    end

    def trip_count
        self.trips.count
    end

    

end

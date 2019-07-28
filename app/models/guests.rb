class Guest
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
#class
    def self.all
        @@all
    end
#.pro_traveller
#returns an array of all
#guests who have made over 1 trip
    def self.pro_traveller
        trip_guests = Trip.all.map {|trip| trip.guest}
        #trip_guests.detect{|guest| trip_guests.count(guest) >1 }
        #ary.select{ |e| ary.count(e) > 1 }.uniq
        trip_guests.select {|guest| trip_guests.count(guest)>1}.uniq
    end
#.find_all_by_name(name)
#takes an argument of a name (as a string),
# returns the all guests with that name
    def self.find_all_by_name(name)
        Guest.all.select {|guest| guest.name == name}
    end

#instance
##listings
# returns an array of all listings 
# a guest has stayed at
    def listings
        trips.map {|trip|  trip.listing}
        .uniq
    end
#trips
# returns an array of all trips a guest has made
#trip_count
# returns the number of trips a guest has taken
    def trips
        Trip.all.select {|trip|trip.guest == self}
    end

    def trip_count
        Trip.all.select {|trip|trip.guest == self}
        .count
    end

end
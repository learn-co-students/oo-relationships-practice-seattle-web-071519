require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

asif = Guest.new('Asif')
stan = Guest.new('Stan')
nick = Guest.new('Nick')
marisa = Guest.new('Marisa')
ls1 = Listing.new('Seattle','Condo1')
ls2 = Listing.new('Tacoma', 'Condo2')
listing_1 = Listing.new("Seattle", "Hotel 1")
listing_2 = Listing.new("Seattle", "Hotel 2")
listing_3 = Listing.new("Tacoma", "Hotel 3")
listing_4 = Listing.new("Portland", "Hotel 4")
listing_5 = Listing.new("Sammamish", "Hotel 5")

trip1 = Trip.new(ls1, asif)
trip2 = Trip.new(ls1, stan)
trip3 = Trip.new(ls2, marisa)
trip4 = Trip.new(ls1, nick)
trip5 = Trip.new(ls2, stan)
trip6 = Trip.new(listing_1, stan)
trip7 = Trip.new(listing_1, stan)

guest_1 = Guest.new("Bob")
guest_2 = Guest.new("Sam")
guest_3 = Guest.new("Joe")
guest_4 = Guest.new("Alex")
guest_5 = Guest.new("Bob")

trip_1 = Trip.new(listing_1,guest_1)
trip_2 = Trip.new(listing_2,guest_1)
trip_3 = Trip.new(listing_2,guest_2)
trip_4 = Trip.new(listing_3,guest_3)
trip_5 = Trip.new(listing_4,guest_4)

Pry.start

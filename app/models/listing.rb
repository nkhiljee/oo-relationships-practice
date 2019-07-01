# - #guests
#   - returns an array of all guests who have stayed at a listing
# - #trips
#   - returns an array of all trips at a listing
# - #trip_count
#   - returns the number of trips that have been taken to that listing
# - .all
#   - returns an array of all listings
# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips

class Listing
    attr_accessor :city, :name
    
    @@all = []
    
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |k|
            k.listing == self
        end
    end

    def guests
        trips.map do |k|
            k.guest
        end
    end


    def trip_count
        trips.length
    end

    def self.find_all_by_city(city)
        @@all.select do |k|
            k.city == city
        end
    end

    def self.most_popular
        all.max do |a, b|
            a.trip_count <=> b.trip_count
        end
    end

    
    
end
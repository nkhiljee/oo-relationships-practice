# - #listings
#   - returns an array of all listings a guest has stayed at
# - #trips
#   - returns an array of all trips a guest has made
# - #trip_count
#   - returns the number of trips a guest has taken
# - .all
#   - returns an array of all guests
# - .pro_traveller
#   - returns an array of all guests who have made over 1 trip
# - .find_all_by_name(name)
#   - takes an argument of a name (as a string), returns the all guests with that name


class Guest
    attr_accessor :name, :city
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def trips
        Trip.all.select do |k|
            k.guest == self
        end
    end

    def listings
        trips.map do |k|
            k.listing
        end
    end

    def trip_count
        trips.length
    end

    def self.pro_traveller
        all.select do |k|
            k.trips.count > 1
        end
    end

    def self.find_all_by_name(name)
        all.select do |k|
            k.name == name
        end
    end
end
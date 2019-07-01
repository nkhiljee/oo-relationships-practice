class Desserts

    attr_accessor :bakery, :ingredient
    
    @@all = []
    
    def initialize(bakery, ingredient)
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
    end

    def bakery
    end

    def calories
    end


end

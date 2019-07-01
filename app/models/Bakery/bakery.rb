class Bakery

    attr_accessor
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
    end

    def desserts
    end

    def average_calories
    end

    def shopping_list
    end


end

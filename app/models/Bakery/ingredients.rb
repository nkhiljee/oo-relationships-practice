class Ingredients

    attr_accessor :calorie_count, :ingredient_name
    
    @@all = []
    
    def initialize(calorie_count, ingredient_name)
        @calorie_count = calorie_count
        @ingredient_name = ingredient_name
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert
    end

    def bakery
    end

    def self.find_all_by_ingredient(ingredient_name)
    end

end

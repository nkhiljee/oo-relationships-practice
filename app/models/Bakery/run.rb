require_relative 'bakery.rb'
require_relative 'ingredients.rb'
require_relative 'desserts.rb'
require 'pry'


b1 = Bakery.new()
b2 = Bakery.new()
b3 = Bakery.new()

i1 = Ingredient.new(100, "flour")
i2 = Ingredient.new(110, "sugar")
i3 = Ingredient.new(30, "chocolate")
i4 = Ingredient.new(15, "nutmeg")
i5 = Ingredient.new(40, "icing")

d1 = Dessert.new(b1, )
d2
d3


binding.pry
0
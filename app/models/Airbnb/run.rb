# You are building an app for an Airbnb competitor
# - your models are listings, guests, trips
#   - a listing (i.e. a house or apartment) has many trips
#     - a listing has a city attribute which is a string of a city name, e.g. 'Seattle'
#   - a guest has many trips
#   - a trip belongs to a listing and a guest

# Write out the relationships using has_many, belongs_to and has_many_through. Create the necessary methods to connect these classes.






require_relative 'trip.rb'
require_relative 'listing.rb'
require_relative 'guest.rb'
require 'pry'

l1 = Listing.new("Houston")
l2 = Listing.new("Austin")
l3 = Listing.new("Dallas") 

g1 = Guest.new("Naush")
g2 = Guest.new("Syed")
g3 = Guest.new("Jordan")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l2, g2)
t3 = Trip.new(l3, g3) 
t4 = Trip.new(l3, g2)
t5 = Trip.new(l3, g1)
binding.pry
0
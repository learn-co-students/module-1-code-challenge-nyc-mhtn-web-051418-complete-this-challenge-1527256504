#dependencies
require_relative 'config/environment.rb'

#seed
alberto = Customer.new("Alberto", "Carreras")
alberto2 = Customer.new("Alberto", "Carrasco")
andrew = Customer.new("Andrew", "Nichols")
brooke = Customer.new("Brooke", "Ruby")
rishi = Customer.new("Rishi", "Script")


flavors = Restaurant.new("Flavors")
mermaid = Restaurant.new("Mermaid Inn")

#seed methods
review1= alberto.add_review(mermaid, "Great oysters")
review2= andrew.add_review(mermaid, "Amazing oysters")
review3= alberto.add_review(flavors, "Great sandwiches")
review4= andrew.add_review(flavors, "Awesome soups")

puts "Deliverables"
# Build the following methods on the Customer class
#
puts Customer.all
# should return all of the customer instances
puts Customer.find_by_name("Alberto Carreras")
# given a string of a full name, returns the first customer whose full name matches
puts Customer.find_all_by_first_name("Alberto")
# given a string of a first name, returns an array containing all customers with that first name
puts Customer.all_names
# should return an array of all of the customer full names
# Customer#add_review(restaurant, content)
puts "See seeds above"
puts review1
# given a restaurant object and some review content (as a string), creates a new review and associates it with that customer and restaurant. A Review belongs to a Customer and belongs to a Restaurant
# Build out the following methods on the Review class
#
puts Review.all
# returns all of the reviews
# Review#customer
puts review1.customer
# returns the customer object for that given review
# Review#restaurant
puts review1.restaurant
# returns the restaurant object for that given review
# Build out the following methods on the Restaurant class
#
puts Restaurant.all
# returns an array of all restaurants
puts Restaurant.find_by_name("Flavors")
# given a string of restaurant name, returns the first restaurant that matches
# Restaurant#reviews
puts flavors.reviews
# returns an array of all reviews for that restaurant
# Restaurant#customers
puts flavors.customers
# returns all of customers who have written reviews of that restaurant. A Restaurant has many Customers and a Customer has many Restaurants












#running tests
# binding.pry
# true

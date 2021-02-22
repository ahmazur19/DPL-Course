# a resturuant looks like this
# res_data = {
#   id: INTEGER *MUST BE UNIQUE,
#   name: STRING,
#   location: {
#     city: STRING,
#     state: STRING,
#   },
#   delivery: BOOLEAN,
#   days_open: STRING *DAYS SEPERATED BY COMMAS(NO SPACES),
#   likes: INTEGER,
#   dishes: ARRAY OF OBJECTS/HASHES
#     { name: STRING, price: FLOAT, ingredients: ARRAY OF STRINGS },
#   ],
#   reviews: ARRAY OF HASHES [
#     {user_id: INTEGER *id of user object, rating: INTEGER 0-5}
#   ]
# }

# OBJECTIVES
# method w/ param restuarant, returns the menu of the param
# method param restuarant, return avg review
# create array of restuarant and do crud actions
# method to return address
# method to return days of operation
# method takes a restuarant and updates it to your array


user1 = {
  id: 1,
  name: "Tony",
}
user2 = {
  id: 2,
  name: "Sally",
}

res1 = {
  id: 1,
  name: "Spicy Thai",
  location: {
    city: "SLC",
    state: "UT",
  },
  delivery: true,
  days_open: "mon,tues,wed,thur,fri,sat,sun",
  likes: 1000,
  dishes: [
    { name: "Pad Thai", price: 10.25, ingredients: ["noddles", "peppers"] },
    { name: "Drunken Noodle", price: 9.25, ingredients: ["noddles", "chicken"] },
  ],
  reviews: [
    { user_id: 1, rating: 5 },
    { user_id: 2, rating: 3 },
  ],
}

res2 = {
  id: 2,
  name: "Albertos",
  location: {
    city: "SLC",
    state: "UT",
  },
  delivery: false,
  days_open: "mon,tues,wed,thur,fri,sat",
  likes: 500,
  dishes: [
    { name: "Tacos", price: 8.25, ingredients: ["tortilla", "carne"] },
    { name: "Quesidalla", price: 9.25, ingredients: ["tortilla", "cheese"] },
  ],
  reviews: [
    { user_id: 1, rating: 2 },
    { user_id: 2, rating: 4 },
  ],
}


# Create an array of restaurants to pull from.
# Create a method to create a restaurant in the array.
# Create a method to read the array of restaurants.
# Create a method to update a restaurant.
# Create a method to delete a restaurant.

@restaurants = [ res1, res2 ]
@review_average = []


def view_restaurants
	puts "All Restaurants"
	puts "---------------"
	@restaurants.each_with_index do |res| #iteration through both res1 and 2 through the instance @restaurants
		puts "#{res[:name]}" #posting name of res 1 and 2
		puts #spacing for neatness on interface
		puts "Address"

		res_city = res[:location][:city] #creates a variable for city to pull from the location hash

		res_state = res[:location][:state] #creates a variable for state to pull from the location hash

		puts "#{res[:name]} is in #{res_city}, #{res_state}" #inputs the variables created above into a formatted address
		puts "------------------"
		puts
		puts "Days of Operation"
		puts "#{res[:days_open]}" #inputs the days opened for the restaurant
    puts "------------------"
		puts
		puts "Delivery?"
		if res[:delivery] == true #create an if else statement to preform a check on the data and input if they deliver or not.
			puts "We Deliver!"
			puts "-----------"
		else res[:delivery] == false
		  puts "Dine in only."
			puts "-------------"
		end

		puts 
		puts "Average Reviews"

		def review_average
			puts @review_average.inject{ |sum, rating| sum + rating }.to_f / @review_average.size
		end

		review_average
		def rest_menus
				@restaurants.each do |res, i|
				puts "#{res[:name]} Menu"
				end
				dish = res[:dishes]
				dish.each_with_index do |dish|
				puts "#{dish[:name]} #{dish[:price]} #{dish[:ingredients]}" # Need to make this print dishes without hashes around.
		end

			rest_menus
		puts "<~~~~~~~~~~~~~~~~~~>"
	end

end

view_restaurants

# def rest_array
# end

# Create a method with a parameter that returns the parameters menu.
# def rest_menus
# 		@restaurants.each do |res, i|
# 		puts "#{res[:name]} Menu"
# 		end
# 		Dish = res[:dishes]

# 		Dish.each_with_index do |dish|
# 		puts "#{dish[:name]} #{dish[:price]} #{dish[:ingredients]}" # Need to make this print dishes without hashes around.
# 		end
# end

# rest_menus
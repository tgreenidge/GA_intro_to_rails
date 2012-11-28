
################################### Example ####################

# class Laptop
# 	attr_accessor :brand, :resolution

# 	def initialize(brand)
# 		@brand = "brand"
# 	end

# 	def ==(other)
# 		other.brand == @brand
# 	end

	
# end

# laptop = Laptop.new("new brand")
# puts laptop.brand

################################## Exercise ####################
# Create a User class
# It must have an age attribute,
# It must have a name attribute
# The name attribute cannot change
# The age attribute can be changed
# Both attributes can be read 

# Bonus! Implement the == method on the class
# to see if two users are the same by
# comparing the name and age

# Double Bonus! Create another method on the User class called same_age_as
# This method compares onlt the age of the User instances

# Triple Bonus! Create another method on the User class called had_birthday!
# It increases the user's age by 1 and prints "Happy Birthday Name" 
# where NAME is the actual age of the user

class User 
	attr_accessor :age
	attr_reader   :name

	def initialize(name, age)
		@age = age
		@name = name
	end


	def same_age_as(user2)
		if @age == user2.age
			puts "true"
		else
			puts "false"
		end
	end

	def ==(user)
		if @age == user.age && @name == user.name
			puts "true"
		else
			puts "false"
		end
	end

	def had_birthday!
		@age += 1
		puts "Happy Birthday #{@name}"	
	end

end
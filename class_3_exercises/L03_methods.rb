 
# data to be used in these exercises

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]




# 1. Write a method which accepts a province code and returns the province name. Ask the user to input a code
# then display the result of passing the input to your method. If the hash does not include the province code
# they provide, let the user know their input is invalid. Challenges in this exercise include: how to access 
# the provinces hash from within your method, and how to return the hash key (province name) by using its 
# value (province code). You may want to explore built-in Hash class methods including .has_value? .invert and .fetch. 
#puts get_province_abbrev("VIC") # line to distinguish exercise output

puts "\n Methods, Exercise 1"
def get_province_abbrev(abbrev)
	provinces = {
					"Australian Capital Territory" => "ACT",
					"New South Wales" => "NSW",
					"Northern Territory" => "NT",
					"Queensland" => "QLD",
					"South Australia" => "SA",
					"Tasmania" => "TAS",
					"Victoria" => "VIC",
					"Western Australia" => "WA"
				}
	if provinces.has_value?(abbrev)==false
		puts "no such abbreviation"
	end
	provinces.each do |province, abbreviation|
		if abbreviation == abbrev
			puts "The province that has the abbreviation #{abbrev} is #{province}."
		end
	end
end

puts "Please enter a province code"
response = $stdin.gets.chomp.upcase
get_province_abbrev(response)



# 2. Write a method which accepts any number of parameters representing months, by number 1 ("January") through 
# 12 ("December"), and displays the corresponding month names in a single line. Be aware of variable scope, and 
# that arrays begin with zero, not one.
puts "\n--------------------" # line to distinguish exercise output

puts "\n Methods, Exercise 2"
def get_month_number(month)
	months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

	month.each do |m|
		if m.to_i <= months.length 
			print " " + months[m.to_i-1] 
		else 
			puts " ***** You entered #{m}. It is not a valid number. Please enter a number between 1 and 12 **** "
		end 
	end
end


puts "Please enter the numbers for the corresponding months	of the year you wish to print. [1 through 12 only] \n "
puts "For example, 1 for January, 9 for December. Be sure to separate each number by a comma."
user_response = $stdin.gets.chomp.split(",")
get_month_number(user_response)
puts " "





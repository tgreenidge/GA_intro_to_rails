 
# data to be used in these exercises

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

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

# 1. Ask the user to input the number 1, 2, 3, or 4, then use "if" and related statements to display the months of 
# the corresponding quarter. If the user inputs an invalid value, let them know. Use ranges to retrieve sets of months.
puts "\n--------------------" # line to distinguish exercise output
puts "\n Branching Exercise, Question 1"

puts "Choose 1, 2, 3, or 4 to represent a specific quarter in a year"
response = gets.chomp
if response.to_i == 1 
	puts "The months in the 1st quarter are: " 
	puts months[0..2]
elsif response.to_i == 2
	puts "The months in the 1st quarter are: " 
	puts months[3..5]
elsif response.to_i == 3
	puts "The months in the 1st quarter are: " 
	puts months[6..8]
elsif response.to_i == 4
	puts "The months in the 1st quarter are: " 
	puts months[9..11]
else 
	puts "I'm sorry, but " + response + " is not a valid response. Please enter the numbers 1, 2, 3, or 4"
end

	
	
	


# 2. Ask the user to input a degree value from 0 to 360. Assuming 0/360 is North, use "case" and "when" to output whether 
# the degrees point Northeast, Southeast, Southwest, or Northwest. Remember that $stdin.gets.chomp retrieves a string value.
puts "\n Branching Exercise, Question 2"
puts "Please enter a degree value between the numbers 0 and 360, inclusive. This will give you the compass direction."
response = $stdin.gets.chomp.to_i
if response >= 0 && response <= 90 
	case response
		when 0
			puts "North"
		when 90
			puts "East"
		else
			puts "Northeast"
	end
elsif response > 90 && response <= 180
	case response
		when 180 
			puts "South"
		else
			puts "Southeast"
	end
elsif response > 180 && response <= 270
	case response
		when 270
			puts "West"
		else
			puts "Southwest"
	end
elsif response > 270 && response <= 360
	case response 
		when 360
			puts "North"
		else
			puts "Northwest"
	end
else 
	puts "Please enter a degree value between 0 and 360, inclusive. This will give you the compass direction"
		
end


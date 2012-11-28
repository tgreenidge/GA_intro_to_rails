 
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

# 1. the String class method .include? returns true if the string contains sub-string or letter passed to the method
# write a loop which outputs months which do not begin with the letter "J"
puts "\n--------------------" # line to distinguish exercise output

puts "\n Conditions, Exercise 1"

months.each do |month|
	if !month.include?("J")
		puts month + " does not begin with the letter 'J'. "
	end
end


# 2. write a game which displays a province name and asks for its code. if the user guesses wrong, end the game
# and display "Game Over.". if the user enter "quit", then display "Bye!" before displaying "Game Over."
# remember the built in method $stdin.gets.chomp gets user input and removes (chomps off) the training line return.
# there are different ways you could write this game. start wondering why one might be better than another.
puts "\n--------------------" # line to distinguish exercise output

puts "\n Conditions, Exercise 2"

count =0

begin
	province = provinces.keys.sample
	puts "Please enter the code for: " + province + " 'quit' to exit this game."
	response = $stdin.gets.chomp.upcase
	if response == provinces[province]
		puts "You are correct!" 
		count += 1
	elsif response != "QUIT"
		puts "Incorrect!"
		response = "quit"
	else 
		puts "Bye"
	end

	# province = provinces.keys.sample
	# puts "Please enter the code for: " + province + " 'quit' to exit this game."
	# response = $stdin.gets.chomp.upcase

end while(response.downcase != 'quit')

puts "Game Over"
puts "You got " + count.to_s + " questions correct"








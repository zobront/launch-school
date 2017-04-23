puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire = gets.chomp.to_i

current_year = Time.now.year
remaining_years = retire - age
retirement_year = current_year + remaining_years

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{remaining_years} years of work to go!"

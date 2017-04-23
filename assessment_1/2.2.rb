METERS_TO_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

size = (length * width).round(2)
size_in_feet = (size * METERS_TO_FEET).round(2)

puts "The area of the room is #{size} square meters (#{size_in_feet} square feet)"

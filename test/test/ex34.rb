animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']

print "What spot number do you want? "
number = gets.chomp.to_i

puts "You chose the #{animals[number]}, which is at index #{number} but is actually number #{number + 1}"

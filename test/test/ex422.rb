print "What's short for Oregon? "
short_or = gets.chomp

print "What's short for California? "
short_ca = gets.chomp

print "What's short for New York? "
short_ny = gets.chomp

states = {
  'Oregon' => short_or,
  'California' => short_ca,
  'New York' => short_ny,
}

print "Enter a state to get the short form: "
full_state = gets.chomp

puts "#{states[full_state]} is short for #{full_state}."

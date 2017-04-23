puts "Want to roll some dice?"
puts "How many dice do you want to roll?"

roll_number = gets.chomp.to_i

puts "Great, we'll roll #{roll_number} dice."

puts '-' * 10

roll_array = []

i = 1

while i <= roll_number
  result = rand(1..6)
  puts "Roll #{i}: #{result}"
  roll_array.push(result)
  i += 1
end

puts '-' * 10

puts "Now we can go back and check the past rolls."

continue = 'yes'

while continue == 'yes' || continue == 'Yes' || continue == 'YES' || continue == 'ya' || continue == 'Ya'

  puts "Which roll would you like to see?"

  which_roll = gets.chomp.to_i

  puts "Roll ##{which_roll} was: #{roll_array[which_roll - 1]}"

  puts "Would you like to go again?"

  continue = gets.chomp

end

if continue == 'no' || continue == 'No' || continue == 'nope' || continue == 'Nope'
  puts "Great, time to move on."
else
  puts "Uhh not sure what that means, but I'll take it as a no."
end

puts '-' * 10

puts "For my last trick, I will add up all your rolls."
puts "Ready?"

ready = gets.chomp

if ready == 'yes' || ready == 'Yes' || ready == 'YES' || ready == 'ya' || ready == 'Ya'
    puts "Here we go..."
else
  puts "Screw you, I'm doing it anyways."
end

total = 0

roll_array.each do |theroll|
  total = total + theroll
end

##tried to do #{roll_array.each {|x| print "#{x} + "}} but didn't work
puts "The total of your rolls is #{total}."

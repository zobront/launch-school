first, second, third = ARGV

first = first.to_i
second = second.to_i
third = third.to_i

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "What is your fourth variable? "
fourth = $stdin.gets.chomp.to_i

puts "Thanks, your total is #{first + second + third + fourth}."

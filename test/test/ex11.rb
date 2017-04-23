print "What is your name? "
name = gets.chomp
print "How old are you? "
age = gets.chomp.to_i
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, #{name}, you're #{age} old (wow, almost #{age+1}!), #{height} tall and #{weight} lbs."

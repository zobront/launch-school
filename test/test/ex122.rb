print "Please give me some money. How much will you give? "
money = gets.chomp.to_f
change = money / 10

puts "Thank you. I'll give you back 10%, which equals $#{money/10}."
puts "Are you happy with $#{change}?"

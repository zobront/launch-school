print "Please write word or multiple words: "
words = gets.chomp

characters = words.delete(' ').size

puts "There are #{characters} characters in #{words}."

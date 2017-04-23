def speech(name, argument)
  puts "#{name}, I have something to tell you..."
  puts "#{argument}\n"
end

speech("Zach", "Fuck off!")

name1 = "Bob"
arg1 = "You are nice."

speech(name1, arg1)

puts "Who do you want to talk to? "
name2 = gets.chomp

puts "What do you have to say to them? "
arg2 = gets.chomp

speech(name2, arg2)

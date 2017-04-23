print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp
puts "I'm going to write these to the file."

newvar = line1\n"line2"\n"line3"\n"

print newvar

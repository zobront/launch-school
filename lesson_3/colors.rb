
def color_valid(color)
  colors = ["blue", "green"]
  colors.include?(color)
end

print "Choose a color: "
choice = gets.chomp.downcase

puts color_valid(choice)

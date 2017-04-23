def populate(peak)

  i = 0
  numbers = []

  (0..peak).each do |digit|
    numbers.push(digit)
  end

  puts "The numbers: "

  numbers.each {|num| puts num}

end

puts "What number would you like to count up to?"
top = gets.chomp.to_i

puts populate(top)

def populate(peak, increment)

  i = 0
  numbers = []

  while i <= peak
    numbers.push(i)

    i += increment
  end

  puts "The numbers: "

  numbers.each {|num| puts num}

end

puts "What number would you like to count up to?"
top = gets.chomp.to_i

puts "How much would you like to increment by?"
count_by = gets.chomp.to_i

puts populate(top, count_by)

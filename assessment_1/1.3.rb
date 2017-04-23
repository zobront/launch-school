def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts "Woohoo!" if digit_list(121432) == [1, 2, 1, 4, 3, 2]

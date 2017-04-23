def running_total(array)
  sum = 0
  array.map {|value| sum += value }
end

puts running_total([2, 5, 13])
puts "***"
puts running_total([14, 11, 7, 15, 20])
puts "***"
puts running_total([3])
puts "***"
puts running_total([])

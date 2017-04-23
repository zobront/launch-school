def sum_of_sums(array)
  multiplier = array.size
  total = 0
  array.each do |num|
    total += (num * multiplier)
    multiplier -= 1
  end
  total
end

puts sum_of_sums([3, 5, 2])
puts sum_of_sums([1, 5, 7, 3])
puts sum_of_sums([4])
puts sum_of_sums([1, 2, 3, 4, 5]) 

def average(array)
  total = 0

  array.each { |x| total += x }
  average = total.to_f / array.size.to_f

  average
end

numbers = [1, 5, 5, 45, 35]

puts average(numbers)

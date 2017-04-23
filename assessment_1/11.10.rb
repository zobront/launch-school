def sum_square_difference(num)
  sum_square = (1..num).reduce(:+) ** 2

  square_sum = 0
  (1..num).each { |x| square_sum += x ** 2 }

  return sum_square - square_sum
end

p sum_square_difference(3)
p sum_square_difference(10)
p sum_square_difference(1)
p sum_square_difference(100)

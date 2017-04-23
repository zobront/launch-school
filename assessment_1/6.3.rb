def find_fibonacci_index_by_length(length)
  old_fib = 1
  fibonacci = 1
  index = 2
  while fibonacci.to_s.size < length
    fibonacci += old_fib
    old_fib = fibonacci - old_fib
    index += 1
  end
  index
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782

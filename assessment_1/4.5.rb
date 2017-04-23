def multisum(num)
  array = (1..num).select {|x| x % 3 == 0 || x % 5 == 0}
  array.reduce(:+)
end

puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(1000)

def merge(arr1, arr2)
  output = []
  arr1.each { |x| output << x }
  arr2.each { |x| output << x }
  output.uniq!
end

puts merge([1, 3, 5], [3, 6, 9])

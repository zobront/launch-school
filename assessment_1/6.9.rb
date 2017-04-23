def include?(array, object)
  !!array.find_index(object)
end

puts include?([1,2,3,4,5], 3)
puts include?([1,2,3,4,5], 6)
puts include?([], 3)
puts include?([nil], nil)
puts include?([], nil)

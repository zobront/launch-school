# def interleave(arr1, arr2)
#   new_arr = []
#   arr1.each_with_index do |element, index|
#     new_arr << element << arr2[index]
#   end
#   new_arr
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

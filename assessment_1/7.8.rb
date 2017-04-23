# def multiply_list(arr1, arr2)
#   products = []
#   arr1.each_with_index do |num1, index|
#     products << num1 * arr2[index]
#   end
#   products
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|arr| arr.reduce(:*)}
end

puts multiply_list([3, 5, 7], [9, 10, 11])

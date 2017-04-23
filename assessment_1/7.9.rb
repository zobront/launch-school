def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.map do |e1|
    products << arr2.map { |e2| e1 * e2 }
  end
  products.flatten.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2])

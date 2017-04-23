def oddities(array)
  array.select.with_index {|x, index| index.even? }
end

puts oddities([2, 3, 4, 5, 6])
puts oddities(['abc', 'def'])

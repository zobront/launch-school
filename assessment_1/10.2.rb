def rotate_array(array)
  array[1..-1] + [array[0]]
end

# def rotate_rightmost_digits(number, digits)
#   array = number.to_s.split("")
#   x = array.delete_at(-digits)
#   array.push(x)
#   array.join("").to_i
# end

def rotate_rightmost_digits(number, digits)
  array = number.to_s.chars
  array[-digits..-1] = rotate_array(array[-digits..-1])
  array.join("").to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917

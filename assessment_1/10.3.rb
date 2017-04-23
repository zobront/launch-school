def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digits)
  array = number.to_s.chars
  array[-digits..-1] = rotate_array(array[-digits..-1])
  array.join("").to_i
end

def max_rotation(number)
  digits = number.to_s.split("")
  (1..digits.size).reverse_each do |num|
    number = rotate_rightmost_digits(number, num)
  end
  number
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845

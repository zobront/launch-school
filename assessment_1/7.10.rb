def middle_word(string)
  array = string.split(" ")
  array[array.size / 2]
end

puts middle_word('last')
puts middle_word('Launch School is one of the greatest!')

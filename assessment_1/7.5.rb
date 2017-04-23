def staggered_case(string)
  array = []
  string.chars.each_with_index do |char, index|
    if index % 2 == 0
      array << char.upcase
    else
      array << char.downcase
    end
  end
  array.join("")
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers')

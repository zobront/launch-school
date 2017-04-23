def reversed_number(number)
  number.to_s.chars.reverse.join("").to_i
end

puts reversed_number(12345)
puts reversed_number(12213)
puts reversed_number(456)
puts reversed_number(12000)
puts reversed_number(1)

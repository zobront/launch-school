def is_odd?(number)
  print "Is #{number} odd? "
  return false if number != number.to_i

  remainder = number % 2

  if remainder == 0
    false
  elsif remainder == 1
    true
  end

end


puts is_odd?(2)

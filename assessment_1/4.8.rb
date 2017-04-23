DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  counter = 1
  multiplier = 10
  number = 0
  while counter <= string.length do
    number += (DIGITS[string[-counter]] * (multiplier ** (counter-1)))
    counter += 1
  end
  number
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end


puts string_to_signed_integer('-4242')

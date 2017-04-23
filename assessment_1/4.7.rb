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
end


puts string_to_integer('-4242')

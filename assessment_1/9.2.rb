def double_number?(number)
  number_as_string = number.to_s
  number_as_string[0..(number_as_string.length / 2) - 1] == number_as_string[number_as_string.length / 2.. -1]
end

def twice(number)
  return number if double_number?(number) == true
  return number * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676

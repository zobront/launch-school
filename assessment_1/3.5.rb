def multiply(first, second)
  first * second
end

def square(number)
  multiply(number, number)
end

def power_of(number, power)
  if power == 0
    1
  elsif power == 1
    number
  else
    total = number
    (power-1).times do
      total = multiply(total, number)
    end
    total
  end
end

puts power_of(8, 10)

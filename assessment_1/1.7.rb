def stringy(integer, first = 1)
  numbers = []

  incrementor = 1

  integer.times do |index|
    if first == 0
      number = index.odd? ? 1 : 0
      numbers << number
    else
      number = index.even? ? 1 : 0
      numbers << number
    end
  end

  numbers.join("")
end

puts stringy(6)

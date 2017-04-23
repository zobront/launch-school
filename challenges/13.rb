def octal_to_decimal(num)
  array = num.to_s.split("")
  if array.include?("8") || array.include?("9")
    puts "Octals can't have 8s or 9s."
  else
    i = 0
    sum = 0
    array.each do |x|
      sum += (x.to_i * 8 ** (array.size - (1 + i)))
      i += 1
    end
    sum
  end
end

p octal_to_decimal(272)

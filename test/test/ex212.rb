def add(a, b)
  return a + b
end

print "Enter first number: "
num1 = gets.chomp.to_i

print "Enter second number: "
num2 = gets.chomp.to_i

sum = add(num1, num2)

puts "#{num1} plus #{num2} equals #{sum}"
puts "Pretty nifty, huh?"

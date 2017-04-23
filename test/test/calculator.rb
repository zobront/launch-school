def add(one, two)
  return one + two
end

def subtract(one, two)
  return one - two
end

def multiply(one, two)
  return one * two
end

def divide(one, two)
  return one / two
end

print "Enter your first number: "
num1 = gets.chomp.to_i

print "What do you want to do with it? "
operation = gets.chomp

print "Enter your second number: "
num2 = gets.chomp.to_i

num3 = 0

if operation == "+"
  num3 = add(num1, num2)
end

if operation == "-"
  num3 = subtract(num1, num2)
end

if operation == "*"
  num3 = multiply(num1, num2)
end

if operation == "/"
  num3 = divide(num1, num2)
end

puts "#{num1} #{operation} #{num2} = #{num3}"

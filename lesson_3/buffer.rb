def fib(first_num, second_num, limit)
  puts first_num
  puts second_num
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
    puts first_num
    puts second_num
  end
end

puts "What's number 1?"
num1 = gets.chomp.to_i

puts "What's number 2?"
num2 = gets.chomp.to_i

puts "What's the max?"
max = gets.chomp.to_i

puts "******"
puts "Here is your Fibonacci sequence:"

fib(num1, num2, max)

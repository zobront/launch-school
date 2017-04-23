puts "Enter the first number:"
first = gets.chomp.to_i

second = ''

loop do
  puts "Enter the second number:"
  second = gets.chomp.to_i

  if second == 0
    puts "Sorry. Second number can't be zero. Try again."
  else
    break
  end
end

puts "==> #{first} + #{second} = #{first + second}"
puts "==> #{first} - #{second} = #{first - second}"
puts "==> #{first} * #{second} = #{first * second}"
puts "==> #{first} / #{second} = #{first / second}"
puts "==> #{first} % #{second} = #{first % second}"
puts "==> #{first} ** #{second} = #{first ** second}"

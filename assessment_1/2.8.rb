puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product:"
  sum_or_product = gets.chomp

  if sum_or_product == 's'
    puts "The sum of the integers between 1 and #{integer} is #{(1..integer).reduce(:+)}."
    break
  elsif sum_or_product == 'p'
    puts "The product of the integers between 1 and #{integer} is #{(1..integer).reduce(:*)}."
    break
  else
    puts "That is not a valid option."
  end
end

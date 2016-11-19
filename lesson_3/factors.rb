def factors(number)
  dividend = number.to_i
  divisors = []

  if dividend < 1
    puts "Sorry, that number doesn't have divisors."
  else
    while dividend > 0
      if number.to_i % dividend == 0
        divisors << (number.to_i / dividend).to_i
        dividend -= 1
      else
        dividend -= 1
      end
    end
  end
  puts "The divisors for #{number} are #{divisors.join(', ')}."
end

puts "Enter a number."
choice = gets.chomp

factors(choice)

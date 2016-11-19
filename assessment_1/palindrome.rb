def palindrome?(word)
  array = word.downcase.split("")
  incrementor = 0
  errors = 0

  loop do
    if array[incrementor] == array[-(incrementor)-1]
    else
      errors += 1
    end
    incrementor += 1

    break if incrementor > array.size
  end

  if errors == 0
    puts "#{word} is a palindrome!"
  else
    puts "#{word} is not a palindrome."
  end

end

puts "Welcome to palindrome checker."
puts "What word would you like to check?"
answer = gets.chomp

palindrome?(answer)

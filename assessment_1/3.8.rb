def palindrome?(input)
  input.reverse == input
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?([1, 4, 5, 5, 4, 1])

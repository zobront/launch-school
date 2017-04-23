def palindrome?(input)
  input.reverse == input
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

puts palindrome?('madam')
puts real_palindrome?("Madam, I'm Adam")
puts palindrome?([1, 4, 5, 5, 4, 1])

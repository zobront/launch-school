def palindromic_number?(integer)
  integer.to_s.reverse == integer.to_s
end

puts palindromic_number?(34543)
puts palindromic_number?(0123210)
puts palindromic_number?(22)
puts palindromic_number?(5)

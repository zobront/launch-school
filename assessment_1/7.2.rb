def letter_case_count(string)
  count = Hash.new(0)
  count[:lowercase] = string.count('a-z')
  count[:uppercase] = string.count('A-Z')
  count[:neither] = string.count('^a-zA-z')

  count
end

puts letter_case_count('abCdef 123')
puts letter_case_count('AbCd +Ef')
puts letter_case_count('123')
puts letter_case_count('')

def crunch(string)
  index = 0
  crunch_text = ''
  while index <= string.length - 1
    crunch_text << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  crunch_text
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

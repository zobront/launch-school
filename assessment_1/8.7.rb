def repeater(string)
  result = ''
  string.each_char do |char|
    result << char * 2
  end
  result
end

puts repeater('Hello')
puts repeater("Good job!")

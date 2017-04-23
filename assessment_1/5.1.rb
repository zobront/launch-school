def ascii_value(string)
  sum = 0
  string.chars.map { |x| sum += x.ord }
  sum
end

new = 'f'.ord
puts new.chr

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')

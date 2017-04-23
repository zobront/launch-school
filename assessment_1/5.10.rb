def print_in_box(string)
  rows, last_row = (string.size).divmod(76)
  if rows <= 1
    horizontal_rule = "+#{'-' * (last_row + 2)}+"
    empty_line = "|#{' ' * (last_row + 2)}|"
  else
    horizontal_rule = "+#{'-' * 78}+"
    empty_line = "|#{' ' * 78}|"
  end

  array = []

  while string.size > 76
    array << string.slice!(0..75)
  end

  array << string

  puts horizontal_rule
  puts empty_line
  array.each do |line|
    puts "| #{line} |"
  end
  puts empty_line
  puts horizontal_rule
end

puts print_in_box('This is a fairly. This is a fairly. This is a fairly. This is a fairly. This is a fairly. This is a fairly. This is a fairly. This is a fairly. This is a fairly.')

def center_of(string)
  center = string.length / 2.0
  if center % 1 != 0
    string[center - 0.5]
  else
    string[center - 1] + string[center]
  end
end

puts center_of('I love ruby')
puts center_of('Launch School')
puts center_of('Launch')
puts center_of('Launchschool')
puts center_of('x')

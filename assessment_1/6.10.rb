def triangle(height)
  index = 1
  while index <= height
    print " " * (height - index)
    puts "*" * index
    index += 1
  end
end

puts triangle(5)

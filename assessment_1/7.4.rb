def swapcase(string)
  array = string.chars.map do |char|
    if char == char.downcase
      char.upcase
    elsif char == char.upcase
      char.downcase
    else
      char
    end
  end
  array.join("")
end

puts swapcase('CamelCase')
puts swapcase('Tonight on XYZ-TV')

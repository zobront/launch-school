def staggered_case(string, forget_it = false)
  result = ''
  needs_upper = true

  string.chars.each do |char|
    if ('A'..'Z').include?(result.chars.last) || ('a'..'z').include?(result.chars.last) || forget_it == true
      if needs_upper
        result += char.upcase
      else
        result += char.downcase
      end
      needs_upper = !needs_upper
    else
      result += char
    end
  end
  result
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers', true)

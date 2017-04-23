DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

# def integer_to_string(integer)
#   array = []
#   loop do
#     array << integer % 10
#     integer = integer / 10
#     break if integer <= 1
#   end
#   array.reverse.join
# end

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end


puts integer_to_string(4321)

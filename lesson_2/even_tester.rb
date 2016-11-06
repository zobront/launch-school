array = [1, 2, 3, 4, 5, 6, 7, 8]

def evener(input)
  input.each do |x|
    if x % 2 == 0
    else
      input.delete(x)
    end
  end
end

puts "Here are all the numbers: #{array}"

evener(array)

puts "Here are all the even numbers: #{array}"

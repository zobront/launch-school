# def sequence(number)
#   array = []
#   1.upto(number) { |num| array << num }
#   array
# end

def sequence(number)
  (1..number).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]

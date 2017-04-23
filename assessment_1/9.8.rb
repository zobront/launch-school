def sequence(count, start)
  (1..count).map { |count| start * count }
end

puts sequence(5, 1)
puts sequence(4, -7)
puts sequence(3, 0)
puts sequence(0, 1000000)

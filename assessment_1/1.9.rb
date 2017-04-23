def sum(integer)
  integer.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(2342)

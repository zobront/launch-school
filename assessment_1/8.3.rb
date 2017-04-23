# def substrings_at_start(string)
#   substrings = []
#   1.upto(string.length) do |count|
#     substrings << string.slice(0, count)
#   end
#   substrings
# end

def substrings_at_start(string)
  substrings = []
  0.upto(string.length - 1) do |index|
    substrings << string[0..index]
  end
  substrings
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

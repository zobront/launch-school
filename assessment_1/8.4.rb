def substrings_at_start(string)
  substrings = []
  0.upto(string.length - 1) do |index|
    substrings << string[0..index]
  end
  substrings
end

def substrings(string)
  substrings = []
  while string.size > 0
    substrings << substrings_at_start(string)
    string.slice!(0)
  end
  substrings
end

puts substrings('abcde')

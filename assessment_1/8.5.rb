def substrings_at_start(string)
  substrings = []
  0.upto(string.length - 1) do |index|
    substrings << string[0..index]
  end
  substrings
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

def palindromes(string)
  substrings(string).select { |x| x.length > 1 && x == x.split("").reverse.join("") }
end

puts palindromes('hello-madam-did-madam-goodbye')

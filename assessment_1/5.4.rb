def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(sentence)
  result = sentence.split(" ").map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
puts swap('a')

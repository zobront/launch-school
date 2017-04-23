def word_sizes(sentence)
  counts = Hash.new(0)
  sentence.split(" ").each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

puts word_sizes("What's up doc?")

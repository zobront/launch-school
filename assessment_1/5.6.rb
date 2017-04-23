def word_sizes(sentence)
  counts = Hash.new(0)
  sentence.split(" ").each do |word|
      counts[word.size] += 1
  end
  counts
end

puts word_sizes('Four score and seven.')

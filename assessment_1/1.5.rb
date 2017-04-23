def reverse(sentence)
  sentence.split(" ").reverse.join(" ")
end

song = "This is my favorite song."

puts reverse(song)

def reverse_long_words(string)
  array = string.split

  array.each do |word|
    word.reverse! if word.length >= 5
  end

  array.join(" ")
end

puts reverse_long_words("Professional")

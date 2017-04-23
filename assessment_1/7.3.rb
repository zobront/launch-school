# def word_cap(string)
#   array = string.split(" ").map(&:capitalize).join(" ")
# end

def word_cap(string)
  array = string.split(" ").each do |word|
    word[0] = word[0].upcase
  end
  array.join(" ")
end

puts word_cap('four score and seven')
puts word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')

words = ["This", "is", "a", "full", "sentence"]

def concatenate(array)
  array.each do |word|
    result = ""
    result = result + word
  end
end

puts concatenate(words)

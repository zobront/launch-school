words = "the flintstones rock"

puts words.split.map {|word| word.capitalize!}.join(' ')

sentence = "Humpty Dumpty sat on a wall."

backwards_sentence = sentence.split(/\W/).reverse.join(' ') + '.'

puts backwards_sentence

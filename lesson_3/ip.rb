def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  puts dot_separated_words
end

dot_separated_ip_address?("192.168.55.44")

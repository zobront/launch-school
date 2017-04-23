class PigLatin
VOWELS = ['A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u', 'Y', 'y']

  def self.translate(str)
    words = str.split(" ")
    new_phrase = []
    words.each do |word|
      letters = word.split("")
      if VOWELS.include?(letters[0])
        new_phrase << word + "ay"
      else
        new_phrase << letters.rotate.join("") + "ay"
      end
    end
    sentence = new_phrase.join(" ")
    sentence
  end
end

p PigLatin.translate("apple pie")

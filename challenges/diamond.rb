class Diamond
  ALPHABET = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I']

  def self.make_diamond(letter)
    @letter = letter
    rows = calculate_rows(@letter)
    @letter_array = create_letter_array(rows)
    print_diamond(@letter_array)
  end

  def self.create_letter_array(rows)
    letter_array = []
    if rows == 1
      letter_array << 'A'
    else
      0.upto((rows / 2 + 0.5).to_i).each do |x|
        letter_array << ALPHABET[x]
      end
      (rows / 2 - 0.5).to_i.downto(0).each do |x|
        letter_array << ALPHABET[x]
      end
    end
    letter_array
  end

  def self.calculate_rows(letter)
    ((distance_between_letters('A', letter)) * 2) + 1
  end

  def self.print_diamond(array)
    array.each_with_index do |letter, index|
      if letter == 'A'
        a_padding = (array.size - 1) / 2
        a_padding.times { print " " }
        print letter
        a_padding.times { print " " }
      else
        padding(index).times { print " " }
        print letter
        gap(index).times { print " " }
        print letter
        padding(index).times { print " " }
      end
      puts "\n"
    end
  end

  def self.distance_between_letters(letter1, letter2)
    (letter1..letter2).count - 1
  end

  def self.padding(row_number)
    distance_between_letters(@letter_array[row_number], @letter)
  end

  def self.gap(row_number)
    (distance_between_letters('A', @letter_array[row_number])) * 2 - 1
  end
end

Diamond.make_diamond("I")

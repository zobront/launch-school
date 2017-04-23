LETTER = ['zero', 'one', 'two', 'three',
          'four', 'five', 'six', 'seven', 'eight',
          'nine', 'ten']

def alphabetic_number_sort(array)
  array.sort_by {|num| LETTER[num] }
end

puts alphabetic_number_sort((0..10).to_a)

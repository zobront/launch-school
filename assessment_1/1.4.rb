def count_occurrences(array)
  counts = {}

  array.uniq.each do |element|
    counts[element] = array.count(element)
  end

  counts.each do |element, count|
    puts "#{element} => #{count}"
  end
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

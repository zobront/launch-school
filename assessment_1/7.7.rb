def show_multiplicative_average(array)
  total = array.reduce(:*).to_f
  average = total / array.size
  puts format('%.3f', average)
end

show_multiplicative_average([3, 5])

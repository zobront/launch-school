def halvsies(array)
  half1 = []
  half2 = []
  index = 0
  midpoint = (array.size / 2.0)

  array.each do |x|
    if index < midpoint
      half1 << x
      index +=1
    else
      half2 << x
      index += 1
    end
  end

  return half1, half2
end



puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]

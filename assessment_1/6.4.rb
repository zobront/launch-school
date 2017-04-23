def reverse!(list)
  left_index = 0
  right_index = -1

  while left_index < list.size / 2
    list[left_index], list[right_index] = list[right_index], list[left_index]
    left_index += 1
    right_index -= 1
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
puts list

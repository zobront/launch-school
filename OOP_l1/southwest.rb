GOAL = 6865

values = [1395, 3476, 1562, 686, 1141, 1896, 5100, 6182, 1394, 1665, 3029]

def subset_sum(numbers, target, partial=[])
  s = partial.inject 0, :+
# check if the partial sum is equals to target

  puts "sum(#{partial})=#{target}" if s == target

  return if s >= target # if we reach the number why bother to continue

  (0..(numbers.length - 1)).each do |i|
    n = numbers[i]
    remaining = numbers.drop(i+1)
    subset_sum(remaining, target, partial + [n])
  end
end

subset_sum(values, GOAL)

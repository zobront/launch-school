def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = "*" * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance)}
  1.upto(max_distance)   { |distance| print_row(grid_size, distance)}
end

# def diamond(number)
#   1.upto(number / 2 + 1) do |x|
#     stars = (x * 2) - 1
#     blank_spaces = (number - stars) / 2
#     puts "#{" " * blank_spaces}#{"*" * stars}#{" " * blank_spaces}"
#   end
#
#   (number / 2).downto(1) do |x|
#     stars = (x * 2) - 1
#     blank_spaces = (number - stars) / 2
#     puts "#{" " * blank_spaces}#{"*" * stars}#{" " * blank_spaces}"
#   end
# end



diamond(13)

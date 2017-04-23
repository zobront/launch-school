first_five = []

(1..5).each do |x|
  puts "Enter the #{x} number:"
  first_five << gets.chomp.to_i
end

puts "Enter the last number:"
last_number = gets.chomp.to_i

if first_five.include?(last_number)
  puts "The number #{last_number} appears in #{first_five}."
else
  puts "The number #{last_number} does not appear in #{first_five}."
end

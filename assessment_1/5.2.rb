DAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

def time_of_day(input)
  day, input = input.divmod(1440)
  day = day % 7 if day > 6
  day = -(day % 7) if day < -6
  hours, minutes = input.divmod(60)
  day_written = DAYS[day]
  time_written = format('%02d:%02d', hours, minutes)
  puts "It is #{time_written} on #{day_written}."
end

time_of_day(634537)


# if input.to_i >= 0
#   hours = format('%02d', hours)
#   minutes = format('%02d', minutes)
# else
#   hours = format('%02d', 24 + hours)
#   minutes = format('%02d', minutes)
# end
#
# puts "#{hours}:#{minutes}"

def after_midnight(time)
  hours, minutes = time.split(":").map(&:to_i)
  (hours * 60 + minutes) % 1440
end

def before_midnight(time)
  array = time.split(":").map(&:to_i)
  (((24 - array[0]) * 60) - array[1]) % 1440
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')

def dms(angle)
  degrees, degrees_remaining = angle.divmod(1)
  minutes = degrees_remaining * 60
  minutes, minutes_remaining = minutes.divmod(1)
  seconds = (minutes_remaining * 60).to_i
  format(%(#{degrees}°%02d'%02d"), minutes, seconds)

end

puts dms(493.034773)

def letter_grade(score)
  case score
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else 'F'
  end
end

def get_grade(one, two, three)
  average = (one + two + three) / 3
  letter_grade(average)
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"

def calculate_bonus(salary, bonus)
  bonus == true ? salary / 2 : 0
end

puts calculate_bonus(2800, true)

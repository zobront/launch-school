class MyCar
  attr_accessor :color, :speed
  attr_reader :year, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(number)
    self.speed += number
    puts "You push the gas and speed up #{number} to #{speed}"
  end

  def break
    self.speed -= 1
  end

  def turn_off
    self.speed = 0
  end

  def speed_check
    puts speed
  end

  def spray_paint(color)
    self.color = color
  end

  def self.mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon."
  end

  def to_s
    puts "My car is a #{year} #{color} #{model}."
  end
end

new_car = MyCar.new("2006", "Gold", "CSX")
puts new_car

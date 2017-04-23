class Vehicle
  attr_accessor :color, :speed
  attr_reader :year, :model

  @@vehicles_created = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@vehicles_created += 1
  end

  def spray_paint(color)
    self.color = color
  end

  def self.total_vehicles
    "This program has created #{@@vehicles_created} vehicles!"
  end

  def bio
    "I am a #{self.model} that is #{age} years old."
  end

  private

  def age
    age = Time.now.year - (self.year).to_i
  end

end

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class MyCar < Vehicle
  WHEELS = 4

  def initialize(year, color, model)
    super(year, color, model)
  end
end

class MyTruck < Vehicle
  include Towable

  WHEELS = 18

  def initialize(year, color, model)
    super(year, color, model)
  end
end


new_car = MyCar.new("2006", "Gold", "CSX")
puts new_car.bio

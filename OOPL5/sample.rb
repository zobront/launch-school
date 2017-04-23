class Employee
  attr_accessor :name, :number

  def initialize(name, number)
    @name = name
    @number = number
  end
end

class Executive < Employee
  def initialize(name, number)
    super
    @vacation_days = 20
    @office = "Corner"
  end

  def name
    "Exe" + super
  end
end

test = Executive.new("John", 1000)
p test.name

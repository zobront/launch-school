class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :height, :weight, :age
  @@number_of_dogs = 0

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    puts "#{name} is #{age} dog years old."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end
end

puts GoodDog.total_number_of_dogs

zach = GoodDog.new("Zach", 26)
puts zach.info

puts GoodDog.total_number_of_dogs

class Animal
end

## dog is-a Animal
class Dog < Animal

  def initialize(name)
    @name = name
    puts "New dog named #{@name} created."
  end

end

class Cat < Animal

  def initialize(name)
    @name = name
    puts "New cat named #{@name} created."
  end
end

class Person

  def initialize(name)
    @name = name
    @pet = nil
  end

  attr_accessor :pet
end

class Employee < Person

  def initialize(name, salary)
    @salary = salary
    super(name)
  end

  def print()
    puts "#{@name} earns #{@salary}"
  end

end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

rover = Dog.new("Rover")

satan = Cat.new("Satan")

mary = Person.new("Mary")

mary.pet = satan

frank = Employee.new("Frank", 120000)

frank.pet = rover

flipper = Fish.new()

crouse = Salmon.new()

harry = Halibut.new()

frank.print()

frank.dossier

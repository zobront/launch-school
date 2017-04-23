module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Fish < Animal
  include Swimmable
end

class GoodDog < Animal


  def initialize(color, name)
    super(name)
    @color = color
  end

end

zach = GoodDog.new("brown", "Zach")
puts GoodDog.ancestors

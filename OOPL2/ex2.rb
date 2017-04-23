module Swim
  def swim
    'swimming!'
  end
end

class Animal
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Animal
  include Swim

  def fetch
    'fetching!'
  end

  def speak
    'bark!'
  end
end

class Cat < Animal
  def speak
    'meow!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

puts Dog.ancestors

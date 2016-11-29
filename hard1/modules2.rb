module Swimmable
  def swim
    puts "Everything's going swimmingly!"
  end
end

class Pet
  def initialize(name)
    @name = name
  end
end

class Dog < Pet
  include Swimmable

  def speak
    puts "Bark!"
  end
end

class Cat < Pet
  def speak
    puts "Meow!"
  end
end

quincy = Dog.new("Quincy")
quincy.speak

mushroom = Cat.new("Mushroom")
mushroom.speak

p quincy.class.ancestors
p mushroom.class.ancestors

quincy.swim

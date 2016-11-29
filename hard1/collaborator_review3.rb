class Cat
end

class Bulldog
  def speak
    "bark!"
  end

  def fetch
    "fetching!"
  end
end

class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

jen = Person.new("Jen")

kitty = Cat.new
bud = Bulldog.new

jen.pets << kitty
jen.pets << bud

p jen.pets

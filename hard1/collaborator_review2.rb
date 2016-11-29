class Bulldog
  def speak
    "bark!"
  end

  def fetch
    "fetching!"
  end
end

class Person
  attr_accessor :name, :pet

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Robert")
p bob

bud = Bulldog.new
bob.pet = bud

p bob.pet
p bob.pet.class

p bob.pet.speak # "bark!"
p bob.pet.fetch # "fetching!"

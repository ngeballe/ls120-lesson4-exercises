class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

p Cat.cats_count == 0

Cat.new('tabby')
p Cat.cats_count == 1

Cat.new('leopard')
p Cat.cats_count == 2

Cat.new('black')
p Cat.cats_count == 3

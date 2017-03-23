

class Mammal

end

module Swimmable
  def say_hi
    p "Hi from Swimmable!"
  end
end

module Barkable
  def say_hi
    p "Hi from Barkable"
  end
end

class Dog < Mammal
  include Barkable
  include Swimmable

  # def say_hi
  #   p "Hi from Dog class"
  # end
end

fido = Dog.new
fido.say_hi

p Dog.ancestors

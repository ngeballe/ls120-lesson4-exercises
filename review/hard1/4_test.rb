

module Loveable
  def lucky_number
    8
  end
end

class Pet
  include Loveable
end

class Dog < Pet
  def lucky_number
    super * 2
  end
end

class Cat < Pet
end

buster = Dog.new
p buster.lucky_number

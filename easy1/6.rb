# Question 6

# What could we add to the class below to access the instance variable @volume?

class Cube
  def initialize(volume)
    @volume = volume
  end
end

# Answer: you could add an attr_accessor statement:

class Cube
  attr_accessor :volume # attr_accessor statement

  def initialize(volume)
    @volume = volume
  end
end

cube = Cube.new(27)
p cube.volume # 27
cube.volume = 125
p cube.volume # 125

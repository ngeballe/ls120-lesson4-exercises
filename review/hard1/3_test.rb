class Being
  def initialize(name, num_eyes)
    @name = name
    @num_eyes = num_eyes
  end
end

class Cyclops < Being
  def initialize(name)
    super(name, 1)
  end
end

frederica = Being.new("Frederica", 2)
p frederica

nemo = Cyclops.new("Nemo")
p nemo

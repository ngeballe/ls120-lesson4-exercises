class Country
  attr_accessor :name, :capital, :political_system

  def initialize(name, capital)
    @name = name
    @capital = capital
  end

  def communist?
    @communist
  end
end

class CommunistCountry < Country
  def initialize(name, capital)
    super
    self.political_system = "Communism"
  end
end

def CityState < Country
  def initialize(name)
    @name = name
    @capital = name
  end
end

spain = Country.new("Spain", "Madrid")
china = CommunistCountry.new("China", "Beijing")
usa = Country.new("United States", "Washington")
usa.political_system = "Democracy . . . for now"

p usa
p china

class Person
  def initialize
    @heroes = %w(Superman Spiderman Batman)
    @cash = { 'ones' => 12, 'fives' => 2, 'tens' => 0, 'twenties' => 2, 'hundreds' => 0 }
  end

  def cash_on_hand
    # this method will use @cash to calculate total cash value
    total = @cash['ones'] + 5 * @cash['fives'] + 10 * @cash['tens'] + 20 * @cash['twenties'] + 100 * @cash['hundreds']
    format('$%.2f', total)
  end

  def heroes
    @heroes.join(', ')
  end
end

joe = Person.new
p joe.cash_on_hand # $62.00
p joe.heroes # "Superman, Spiderman, Batman"

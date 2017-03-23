class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

computer = Computer.new
p computer
computer.create_template
p computer
p computer.show_template
p computer

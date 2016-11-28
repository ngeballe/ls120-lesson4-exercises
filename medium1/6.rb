class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

class Computer2
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end

hal = Computer.new
hal.create_template
puts hal.show_template # "template 14231"

db = Computer2.new
db.create_template
puts db.show_template # "template 14231"

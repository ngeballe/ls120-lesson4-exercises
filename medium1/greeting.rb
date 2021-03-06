class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

greeting = Greeting.new
greeting.greet("Howdy")

hello = Hello.new
hello.hi

goodbye = Goodbye.new
goodbye.bye # Goodbye


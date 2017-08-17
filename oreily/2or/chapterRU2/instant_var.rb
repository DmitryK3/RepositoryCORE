class Dog
def make_up_name
@name = "Sandy"
end
def talk
puts "#{@name} says Bark!"
end
end

dog = Dog.new
dog.make_up_name
dog.talk
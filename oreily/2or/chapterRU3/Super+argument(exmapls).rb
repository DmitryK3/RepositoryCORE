class Animal
    attr_accessor :name
def move(destination)
puts "#{@name} runs to the #{destination}."
end
end
class Armadillo < Animal
def move(destination)

puts "#{@name} unrolls!"
super(destination)
end
end
class Armadillo < Animal
def move(destination)
puts "#{@name} unrolls!"
super
end
end

dillon = Armadillo.new
dillon.name="Dillon"
dillon.move("burrow")

#answer: 
#Dillon unrolls!
#Dillon runs to the burrow.

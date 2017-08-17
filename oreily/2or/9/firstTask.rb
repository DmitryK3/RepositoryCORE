
module Curious
def investigate(thing)
puts "Looks at #{thing}"
end 
end

module Clumsy
def brea(thing)
puts "Knocks over #{thing}"
end
end

class Monkey
include Clumsy
include Curious
end


bubbles = Monkey.new
bubbles.investigate("vase")
bubbles.brea("vase")

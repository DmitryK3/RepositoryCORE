class Vehicle
attr_accessor :odometer
attr_accessor :gas_used
def accelerate
puts "Floor it!"
end
def sound_horn
puts "Beep! Beep!"
end
def steer
puts "Turn front 2 wheels."
end
def mileage
return @odometer / @gas_used
end
end

class Truck < Vehicle
attr_accessor :cargo
def load_bed(contents)
puts "Securing #{contents} in the truck bed."
@cargo = contents
end
end

truck = Truck.new

#puts car.instance_variables----не будет роботать потому что переменные не наследуются 
#но появляются после вызова наследованых методов... У каждого объекта Ruby имеется
#метод instance_variables, который можно вызвать для просмотра списка переменных экземпляра, 
#определенных для этого объекта.

truck.accelerate
truck.sound_horn
ответ:
Floor it!
Beep! Beep!
а нужен:

truck.odometer = 22914
truck.gas_used = 728
puts truck.instance_variables
ответ:
@odometer
@gas_used

Таким образом ясно, что только записывающие спец=суперкласс методы, в инстант переменные
могут создавать наследуемые переменные!
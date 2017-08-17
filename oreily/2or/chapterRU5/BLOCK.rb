def my_method(&my_block)
puts "We're in the method, about to invoke your block!"
my_block.call
puts "We're back in the method!"
end

my_method do
puts "We're in the block!"
end


#--------------------else yield input option

def pass_parameters_to_block
puts 1
yield 9, 3
puts 3
end

pass_parameters_to_block do |param1, param2|
puts param1 + param2
end

#---------------------or mine option:
def yolo_method
puts "yolo start"
yield 3, 12
puts "yolo end"    
end 

yolo_method do |xxx, yyy|
puts xxx+yyy
end
#---------------------or mine option with many different:

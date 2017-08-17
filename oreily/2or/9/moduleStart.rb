module MyModule
def first_method
puts "first_method called"
end
def second_method
puts "second_method called"
end
end
class MyClass
include MyModule
end
my_object = MyClass.new
my_object.first_method
my_object.second_method
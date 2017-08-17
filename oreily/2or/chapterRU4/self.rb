class MyClass
def first_method
puts "11Current instance within first_method: #{self}"
self.second_method
end
def second_method
puts "22Current instance within second_method: #{self}"
puts "i am called by method 1 haha"
end
end
my_object = MyClass.new
my_object.first_method
#class Employee
#attr_reader :name, :salary
#def name=(name)
#if name == ""
#raise "Name can't be blank!"
#end
#@name = name
#end
#def salary=(salary)
#if salary < 0
#raise "A salary of #{salary} isn't valid!"
#end
#@salary = salary
#end
#def print_pay_stub
#puts "Name: #{@name}"
#pay_for_period = (@salary / 365.0) * 14
#puts "Pay This Period: $#{pay_for_period}"
#end
#end

#amy = Employee.new
#amy.name = "Amy Blake"
#amy.salary = 50000

#--------------mistake(about bad rounding)! No 2 fixnumbers together in dividing operations!
#pay_for_period = (@salary / 365) * 14---------wrong!!!
#pay_for_period = (@salary / 365.0) * 14-------correct!
#amy.print_pay_stub
#-----------------mistake2(continue-formating)! No 2 fixnumbers together in dividing operations!
#-add----------formatted_pay = format("%.2f", pay_for_period)

class Employee
attr_reader :name, :salary
def name=(name)
if name == ""
raise "Name can't be blank!"
end
@name = name
end
def salary=(salary)
if salary < 0
raise "A salary of #{salary} isn't valid!"
end
@salary = salary
end
def print_pay_stub
puts "Name: #{@name}"
pay_for_period = (@salary / 365.0) * 14
formatted_pay = format("%.2f", pay_for_period)
puts "Pay This Period: $#{formatted_pay}"
end
end

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000
amy.print_pay_stub


#Name: Amy Blake
#Pay This Period: $1917.81

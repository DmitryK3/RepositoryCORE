#there are mistakes since its not full redaction!

class Employee
attr_reader :name, :salary

def                               name=(name)
    
if name == ""
raise "Name can't be blank!"
end
@name = name
end
def                               salary=(salary)
    
if salary < 0
raise "A salary of #{salary} isn't valid!"
end
@salary = salary
end


def initialize (name="Anonymous", salary=0.0)
@name = name
@salary = salary
end


def print_pay_stub
puts "Name: #{@name}"
pay_for_period = (@salary / 365.0) * 14
formatted_pay = format("$%.2f", pay_for_period)
puts "Pay This Period: #{formatted_pay}"
end

def print_name
puts "Name: #{name}"
end
end



class SalariedEmployee < Employee
attr_reader :salary

def salary=(salary)
# Код проверки и присваивания @salary
@salary = salary
end


def print_pay_stub
    #Вызывает метод print_name, унаследованный от суперкласса:
print_name
    #------------------------------------------------------------
pay_for_period = (salary / 365.0) * 14
formatted_pay = format("$%.2f", pay_for_period)

puts "Pay This Period: #{formatted_pay}"
end
end

salaried_employee = SalariedEmployee.new
salaried_employee.name = "Jane Doe"
salaried_employee.salary = 50000
salaried_employee.print_pay_stub 


#answer: Name: Jane Doe, Pay This Period: $1917.81

#--------------------------------------------=================

class HourlyEmployee < Employee
attr_reader :hourly_wage, :hours_per_week
def hourly_wage=(hourly_wage)
# Код проверки и присваивания @hourly_wage
if hourly_wage<0 
    raise "You are dooomed"
end
    
@hourly_wage = hourly_wage
end


def hours_per_week=(hours_per_week)
# Код проверки и присваивания @hours_per_week
if hours_per_week<0
    raise "You are dooomed"
end

@hours_per_week=hours_per_week
end


def print_pay_stub
print_name
pay_for_period = hourly_wage * hours_per_week * 2
formatted_pay = format("$%.2f", pay_for_period)
puts "Pay This Period: #{formatted_pay}"
end
end
hourly_employee = HourlyEmployee.new
hourly_employee.name = "John Smith"
hourly_employee.hourly_wage = 14.97
hourly_employee.hours_per_week = 30
hourly_employee.print_pay_stub 
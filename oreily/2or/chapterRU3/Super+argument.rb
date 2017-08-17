class Person
def greet_by_name(name)
"Hello, #{name}!"
end end


class Friend < Person
def greet_by_name(name)
basic_greeting = super(name)
"#{basic_greeting} Glad to see you!"
end
end

puts Friend.new.greet_by_name("Meghan")
#ответ:  Hello, ---Meghan---! Glad to see you!
#--------------------------------------------------

class Person
def greet_by_name
"Hello, !"
end
end
class Friend2 < Person
def greet_by_name
basic_greeting = super
"#{basic_greeting} Glad to see you!"
end
end
puts Friend2.new.greet_by_name
#-------------------------------------------3 option
class Person
def greet_by_name(name)
"Hello, #{name}!"
end
end
class Friend < Person
def greet_by_name(name)
basic_greeting = super
"#{basic_greeting} Glad to see you!"
end
end
puts Friend.new.greet_by_name("Bert")
#--Тут, есть супер, но он не передает аргумент, а значит 
#наследует его от супер класса === class Person(name) + class Friend(name)!


#---------------------------------answers by options:
#Hello, ---Meghan---! Glad to see you!
#Hello, ______! Glad to see you!
#Hello, ---Bert---! Glad to see you!
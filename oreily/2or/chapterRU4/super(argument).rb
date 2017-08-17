class Person
def greet_by_name(name)
       "Hello its super class start-string, #{name}!"
end
end

class Friend < Person
def greet_by_name(name)
                                     basic_greeting = super(name)
"#{basic_greeting} Glad to see you!"
end
end
puts Person.new.greet_by_name('SuperArthur')
puts Friend.new.greet_by_name("Meghans subclass argument")


#Basically it goes: 1)Создание обьекта==Friend.new.greet_by_name("Meghans subclass argument")
#2)Создание метода суперкласса greet_by_name(name)
#                              "Hello its super class start-string, #{name}!"
#3)Пересылка аргументов из шага 1 в метод в шаге 2 (выше названные).
#4)Суперкласс выдает ответ:
#  1) Hello its super class start-string+++
#  2) SuperArthur
#
#1.2.1)Повтор шагов 1-4 в субклассе1
#1.2.2) Субкласс через "супер" берет копию метода суперкласса... 
#       а) одалживает строку:                            "Hello its super class start-string
#       б) получает аргумент через созданный обьект-НЬЮ:          Meghans subclass argument!
#       в)"получает" в тот же субкл. метод еще и строку своего метода:      Glad to see you!
#  
#!!!Итого субкласс состоит из 3х частей!!!: 
#Hello its super class start-string, Meghans subclass argument! Glad to see you!
#А суперкласс только из 2х:     Hello its super class start-string, SuperArthur!

#И последнее... аргументы не воруются из супер класса через супер-субкласса!!!



#Важное отличие super(хххх) и super!!!

#Ключевое слово super без скобок вызывает переопределенный метод с теми же аргумен-
#тами, которые были переданы переопределяющему методу.
#С другой стороны, вызов super() вызывает переопределенный метод без аргументов,
#даже если переопределяющий метод получает аргументы.
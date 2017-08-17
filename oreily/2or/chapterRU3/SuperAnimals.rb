class Animal
attr_reader :name, :age

#-----изменение унаследованного, глобального метода ОБДЖЕКТ, приведение данных к "строке":  
def to_s
"#{@name} the dog, age #{age}"
end
#-----

def name=(value)
if value == ""
raise "Name can't be blank!"
end
@name = value
end
def age=(value)
if value < 0
raise "An age of #{value} isn't valid!"
end
@age = value
end
def talk
puts "#{@name} says Bark!"
end
def move(destination)
puts "#{@name} runs to the #{destination}."
end
def report_age
puts "#{@name} is #{@age} years old."
end
end

class Dog < Animal
end
class Cat < Animal
def talk
puts "#{@name} says Meow!"
end
end

class Bird < Animal
def talk
puts "#{@name} says Chirp! Chirp!"
end
end

whiskers = Cat.new
whiskers.name = "Whiskers"
polly = Bird.new
polly.name = "Polly"

whiskers.talk
polly.talk

#------ответ:-------мутировавший глобальный ОБЬЕКТ-метод: 
puts whiskers, polly
#Whiskers the dog, age 
#рolly the dog, age 

#------как мы видим, сверху, нет одной переменной, вместо нее ставится ее имя= age и все!
#к тому же перепутан текст между переменными(он не меняется под других животных - он только про собак):
#the dog...the dog... А Вискерс - кот!
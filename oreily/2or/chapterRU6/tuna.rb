#--------------------------------------------correct  resolving(i would not say that):
puts 'noooooooooooooooooooo'
puts 'noooooooooooooooooooo'
def make_casserole
puts "Preheat oven to 375 degrees"
 ingredients = yield
 
puts "Place #{ingredients} in dish"
puts "Bake for 20 minutes"

end 

make_casserole do 
ingredients = "noodles, celery, and tuna"
end 
make_casserole do
ingredients = "rice, broccoli, and chicken"
end 



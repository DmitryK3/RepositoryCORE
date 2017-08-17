def mileage(miles_driven, gas_used)
if gas_used == 0
return 0.0
end

miles_driven / gas_used
end


#1 методу передаются 2 условия, которые не должны быть 0, и хранятся в 2х переменных,
#и имеют по 1 алерту после себя...

trip_mileage = mileage(400, 12)
puts "You got #{trip_mileage} MPG on this trip."

puts mileage(0, 0)

lifetime_mileage = mileage(11432, 366)
puts "This car averages #{lifetime_mileage} MPG."
numbers = [2, 3, 4]
squares = []
numbers.each do |number|
squares << number ** 2
end
p squares

#----------------------non-add top results to down side!
numbers = [2, 3, 4]
cubes = []
numbers.each do |number|
cubes << number ** 3
end
p cubes

#========================modified option:
#========================modified option:

phone_numbers = ["1-800-555-0199", "1-402-555-0123"]
area_codes = []
phone_numbers.each do |phone_number|
area_codes << phone_number.split("-")[1]
end
p area_codes


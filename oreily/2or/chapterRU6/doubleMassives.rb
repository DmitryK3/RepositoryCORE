#before
numbers = [2, 3, 4]
squares = []
numbers.each do |number|
squares << number ** 2
end
p squares

#and one mpre
numbers = [2, 3, 4]
cubes = []
numbers.each do |number|
cubes << number ** 3
end
p cubes

#and last one
phone_numbers = ["1-800-555-0199", "1-402-555-0123"]
area_codes = []
phone_numbers.each do |phone_number|
area_codes << phone_number.split("-")[1]
end
p area_codes


#----------cool, the same - option:
squares = [2, 3, 4].map { |number| number ** 2 }
cubes = [2, 3, 4].map { |number| number ** 3 }
area_codes = ['1-800-555-0199', '1-402-555-0123'].map do |phone|
phone.split("-")[1]
end
p squares, cubes, area_codes
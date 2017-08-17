review_file = File.open("reviews.txt")
puts review_file.class 

lines = review_file.readlines
puts "Line 4: #{lines[3]}"
puts "Line 1: #{lines[0]}"
puts lines.length 

#--------------modified option 1
review_file = File.open("reviews.txt")
lines = review_file.readlines
puts "Line x: #{lines[1]}"
puts "Line y: #{lines[2]}"
review_file.close




# or else, 2 option!

File.open("reviews.txt") do |review_file|
    
lines = review_file.readlines
puts "Line 4: #{lines[3]}"
puts "Line 1: #{lines[0]}"

end


File.open("reviews.txt") do |review_file|
lines = review_file.readlines
end
puts lines.length
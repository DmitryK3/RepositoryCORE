# есть 2 массива - 1 с текстом, а 2й с вырезками из главного текста в которых названия 1 фильма
#эти названия с текстом вокруг них собираются вместе во второй массив.
lines = []
File.open("reviews.txt") do |review_file|
lines = review_file.readlines
end
relevant_lines = []
lines.each do |line|
if line.include?("Truncated")
relevant_lines << line
end
end
puts relevant_lines


#----------------2 option more short!
lines = []
File.open("reviews.txt") do |review_file|
lines = review_file.readlines
end
relevant_lines = lines.find_all { |line| line.include?("Truncated") }
puts relevant_lines
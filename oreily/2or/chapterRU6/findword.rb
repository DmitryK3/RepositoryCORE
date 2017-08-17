lines = []
File.open("reviews.txt") do |review_file|
lines = review_file.readlines
end
relevant_lines = lines.find_all { |line| line.include?("Truncated") }

#puts relevant_lines 

#==============================
def find_all
matching_items = []
self.each do |item|
if yield(item){ |line| line.include?("Truncated") }
matching_items << item
end
end
end
puts matching_items
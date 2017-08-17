reviews = relevant_lines.reject { |line| line.include?("--") }


def reject
kept_items = []
self.each do |item|
unless yield(item) 
kept_items << item

end

end
kept_items

end
p reviews
p kept_items
puts reviews
puts kept_items


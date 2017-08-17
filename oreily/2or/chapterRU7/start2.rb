#то же самое но профессиональнее и тут +1 не к НИЛЛ, а к 0 из за другой формы создания ХЭША!

lines = []
File.open("votes.txt") do |file|
lines = file.readlines
end
votes = Hash.new(0)
lines.each do |line|
name = line.chomp
votes[name] += 1
end
p votes

#else option with else TXT!

lines = []
File.open("votes2.txt") do |file|
lines = file.readlines
end
votes = Hash.new(0)
lines.each do |line|
name = line.chomp
votes[name] += 1
end
p votes
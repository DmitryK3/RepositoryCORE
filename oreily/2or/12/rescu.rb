begin
risky_method
rescue
puts "Rescued an exception!"
end
def risky_method
raise "oops!"
puts "I'll be skipped."
end




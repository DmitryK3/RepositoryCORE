 
 
puts format("%12s | %s", "Product", "Cost in Cents")
puts format("%12s | %2i", "Stamps", 50)
puts format("%12s | %2i", "Paper Clips", 5)
puts format("%12s | %2i", "Tape", 99)


#--------------------------------new task 2
def test_format(format_string)
print "Testing '#{format_string}': "
puts format(format_string, 12.3456)
end
test_format "%7.3f"
test_format "%7.2f"
test_format "%7.1f"
test_format "%.1f"
test_format "%.2f"
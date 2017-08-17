class LoveInterest
def request_date
if @busy
puts "Sorry, I'm busy."
else
puts "Sure, let's go!"
@busy = true
end
end
end



loveInterest = LoveInterest.new
request_date
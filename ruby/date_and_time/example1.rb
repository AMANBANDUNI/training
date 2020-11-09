#Getting Current Date and Time
#Following is the simple example to get current date and time −

time1 = Time.new
puts "Current time : "+time1.inspect


time2 = Time.now
puts "Current time : "+time2.inspect

puts time1.year

puts time1.month
puts time1.day
puts time1.wday
puts time1.yday

puts time1.hour
puts time1.min
puts time1.sec
puts time1.usec
puts time1.zone

Time.local(2008,7,8)
print "\n"
puts Time.new.inspect
time1 = Time.new
puts "Current time : "+time1.inspect

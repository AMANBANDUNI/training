# Ruby - Date & Time:

The Time class represents dates and times in Ruby. It is a thin layer over the system date and time functionality provided by the operating system. 
This class may be unable on your system to represent dates before 1970 or after 2038.

This chapter makes you familiar with all the most wanted concepts of date and time.


=> Getting Current Date and Time:
	Following is the simple example to get current date and time −


	time1 = Time.new
	puts "Current Time : " + time1.inspect
	
	# Time.now is a synonym:
	time2 = Time.now
	puts "Current Time : " + time2.inspect
	
	
	This will produce the following result −
	
	Current Time : Mon Jun 02 12:02:39 -0700 2008
	Current Time : Mon Jun 02 12:02:39 -0700 2008




=> Getting Components of a Date & Time:
	We can use Time object to get various components of date and time. Following is the example showing the same −

time = Time.new

# Components of a Time
puts "Current Time : " + time.inspect
puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name




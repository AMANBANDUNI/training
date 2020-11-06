$LOAD_PATH << '.'

require 'trig'
require 'moral'

print "The value of sin(pi/4) = "
Trig.sin(Trig::PI/4)
print "\n"
print ("The value of cos(pi/2) = ")
Trig.cos(Trig::PI/2)
print "\n"
wrong_doing= Moral.sin(Moral::VERY_BAD)
puts Moral::BAD

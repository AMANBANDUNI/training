# Returns number of seconds since epoch
puts time = Time.now.to_i  

# Convert number of seconds into Time object.
puts Time.at(time)

# Returns second since epoch which includes microseconds
puts time = Time.now.to_f

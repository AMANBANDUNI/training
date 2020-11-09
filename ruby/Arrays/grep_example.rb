arr=["aman","nanu",23,22,"software","finance"]
puts "#{arr.grep(String)}"
puts "#{arr.grep(Integer)}"

print "\n"
puts "#{arr.grep(/^a/)}"      # It will print all the elements starts with a.
puts "#{arr.grep(/e$/)}"	# It will print all the elements ends with e.

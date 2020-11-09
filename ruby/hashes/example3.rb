hash1 =Hash.new("month")
hash1={"jan"=>1,"feb"=>2,"mar"=>3,"april"=>4}
puts "#{hash1}"

print"\n"
puts "#{hash1.keys}"

print"\n"
puts "#{hash1.values}"

#------------------------------------------------------------------
hash1.clear

print"\n"
puts "#{hash1.keys}"

#-------------------------------------------------------------------
hash1={"jan"=>1,"feb"=>2,"mar"=>3,"april"=>4}
print "\n"
puts "#{hash1.keys[0]}"


print "\n"
puts "#{hash1.values[0]}"

print "\n"

puts "#{hash1["jan"]}"

#----------------------------------------------------------------------
print "\n"

puts "#{hash1.default("jan")}"

hash1.default="month"

puts "#{hash1.default("jan")}"


#--------------------------------------------------------------------

print "\n"
hash1.delete("jan")
puts "#{hash1}"

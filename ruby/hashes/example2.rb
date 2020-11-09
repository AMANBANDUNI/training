h1= Hash.new( "default value")
h1= {
"Ruby"=> 1,
"JS"=>2,
"Python"=>3
}

=begin
h1={
:Ruby => 1,
:JS=>2,
"Python"=> 3
}

puts h1[:Ruby]
=end

puts h1
print"\n"
puts "#{h1}"

#----------------------------------------------------------

print"\n"
puts h1[0]
puts "#{h1[0]}"


print"\n"
puts h1["ruby"]
puts "#{h1["ruby"]}"


print"\n"
puts h1["Ruby"]
puts "#{h1["Ruby"]}"

print"\n"
puts h1[2]
puts "#{h1[2]}"


print"\n"
puts h1["Python"]
puts "#{h1["Python"]}"

#-------------------------------------------------------------

h1["Ruby"]=10
h1["JS"]=20
h1["Python"]=30

print "\n"
puts h1["Ruby"]


print "\n"
puts h1["JS"]

print "\n"
puts h1["Python"]



#-----------------------------------------------------------------

keys = h1.keys
print("\n")
puts keys
puts "#{keys}"
puts "#{h1.keys}"


#---------------------------------------------------------------------
values = h1.values
print("\n")
puts values
puts "#{values}"
puts "#{h1.values}"



print "\n"

c= Array.new(4,"mac")
puts c

#or
puts "#{c}"

puts "size of array c = #{c.length}"


#---------------------------------------------------------------------------------------------------------------------
		# OR

# We can also use a block with new, populating each element with what the block evaluates to −


print "\n"
nums2 = Array.new(10) {"manmeet"}
puts "#{nums2}"




#---------------------------------------------------------------------------------------------------------------------



# We can also use a block with new, populating each element with what the block evaluates to −

print "\n"
nums3 = Array.new(10) {|e| e = e * 2}
puts "#{nums3}"





#------------------------------------------------------------------------------------------------------------------------
# There is another method of Array, []. It works like this −

print "\n"
nums4 = Array.[](1, 2, 3, 4,5)


puts "#{nums4}"





#-----------------------------------------------------------------------------------------------------------------------
#One more form of array creation is as follows −

nums5 = Array[1, 2, 3, 4,5]

puts "#{nums5}"

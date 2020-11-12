puts "enter a string: "
str=gets.chomp()
rev=""
n=1
while str.length>=n
	# rev[n-1]=str[-n] or 
	rev+=str[-n]
	n+=1
end
puts str
puts rev
if str==rev
	puts"pallindrome string"
else 
	puts "not pallindrome"
end

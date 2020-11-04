=begin

Syntax: 
unless conditional [then]
   code
[else
   code ]
end

=end

print ("Enter value of x= ")
x=gets()
unless x.to_i>=2
	puts ("value of x is less than 2")
else 
	puts ("value of x is greater than or equal to 2")
end

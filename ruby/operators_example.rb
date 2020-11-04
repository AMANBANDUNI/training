class Operators
	def comparison_operators()
		puts "Enter the value of a = "
		a= gets()
		puts "Enter the value of b = "
		b= gets()
		print("\n")
		puts ("a==b: #{a==b} ")

		puts ("a>b: #{a>b} ")

		puts ("a<b: #{a<b} ")

		# Combined comparison operator (<=>)
		puts ("a<=>b: #{a<=>b} ")#Returns 0, if first operand=second, Return 1, if first operand>second, Return -1, if first operand<second

		# ( triple === sign operator)
		puts ("(1..10)===5: #{(1..10)===5} ")#Used to test equality within a when clause of a case statement.

		# (.eql? operator) => Return true if the receiver and argument have both the same type & equal values.
		puts ("1==1.0: #{1==1.0}") # 1==1.0 will return true , since the values of both is same.
		puts ("1.eql?(1.0): #{1.eql?(1.0)} ") #But now it will return False, since value is same but the datatype of is diff.

		#(.equal? operator => Return true if the receiver and argument have the same obj id)

 
	end

	def parallel_ass_operators()
		puts "Enter the value of a,b,c resp.: \n"
		a,b,c= gets(),gets(),gets() # Parallel Assignement Operators.
		puts("Value of a: "+a)
		puts("Value of b: "+b)
		puts("Value of c: "+c)
		print("\n")

		#Parallel assignment operators are also useful in swapping the values held  in two variable.
		a,b=b,c
		puts("Value of a: "+a)
		puts("Value of b: "+b)
		puts("Value of c: "+c)
		
	end

	def ruby_bitwise_operators()
		a,b=60,13
		puts ("Here The value of a=#{a}, b=#{b}")
		puts ("The Binary value of a(60): #{a.to_s(2)}")
		puts ("The Binary value of b(13): #{b.to_s(2)}")
		
		#Binary AND Operator
		puts ("The value of a&b: #{a&b}") #(a&b) will give 12 whose binary value= 0000 1100
		#Binary OR Operator
		puts("The value of a|b: #{a|b}") #(a|b) will give 61 whose binary value= 0011 1101
		#Binary XOR Operator
		puts("The value of a^b: #{a^b}") #(a^b) will give 49 whose binary value= 0011 0001
		#Binary ONE'S Complement(Its a unary operator)
		puts("The value of ~a: #{~a}") #(~a) will give -61, which is 1100 0011
		#Binary left shift operator
		puts("The value of a<<2: #{a<<2}") #a<<2 will give 240, whose binary value= 1111 0000
		#Binary right shift operator
		puts("The value of a>>2: #{a>>2}") #a>>2 will give 15, whose binary value= 0000 1111
	end

	def ruby_ternary_operator()
		a,b=10,20
		c=(a<b ? a : b) #IF the a<b = true it will print the value of a else value of b.
		puts (c)
		print("\n")
		age=32
		age>=21 ? puts("You're over 21!") : puts("You're too young.")
	end

	def ruby_range_operators()
		# ".." => Inclusive range operator, creates a range from start point to end point inclusive.
		a= (1..10).to_a		 # .to_a is used to convert it into an array.
		puts ("Range of 1 to 10 including last no.: #{a}")
		# "..." => Exclusive range operator, creates a range from start point to end point exclusive.
		print ("\n")
		b= (1...10).to_a
		puts ("Range of 1 to 10 excluding last no.: #{b}")
	end
end

obj1=Operators.new
#obj1.comparison_operators()
print("\n")
#obj1.parallel_ass_operators()
print("\n")
#obj1.ruby_bitwise_operators()
print("\n")
#obj1.ruby_ternary_operator()
print("\n")
obj1.ruby_range_operators()

class A
	def initialize(x,y)
		@num1=x
		@num2=y
	end
	def add
		@res= @num1+@num2	 
	end
	def print_details
		puts "Result = #{@res}"
	end
end
class B<A
	def mul
		@res= @num1*@num2
	end
end
puts "Enter 2 numbers: "
obj1=A.new(gets.chomp().to_i,gets.chomp().to_i)
obj1.add
obj1.print_details
puts "Enter 2 numbers: "
obj2=B.new(gets.chomp().to_i,gets.chomp().to_i)
obj2.mul
obj2.print_details

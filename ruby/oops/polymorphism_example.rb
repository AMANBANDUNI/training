class A
	def initialize(x=10,y=20)
		@x,@y=x,y
	end
	def add
		@res=@x+@y
	end
	def print_details
		puts"result = #{@res}"
	end
end
class B<A
	def add
		@res=@x.to_s + @y.to_s
	end
end
obj1=A.new
obj1.add
obj2=B.new
obj2.add
obj1.print_details()
obj2.print_details()

class Fibonacci_series
	def fs(num)
		num1=0
		num2=1
		print "0 1 " 
		num.times do |i|
			num3=num1+num2
			print (num3.to_s+" ")
			num1=num2
			num2=num3
		end
	end
end

s1= Fibonacci_series.new
puts "Enter the no. of Fibonacci series you want: "
n= gets.chomp()
s1.fs(n)


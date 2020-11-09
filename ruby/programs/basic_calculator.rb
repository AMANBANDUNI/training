puts "Enter first no.: "
num1 = gets.chomp().to_f
puts "Enter the operator"
op = gets.chomp()
puts "Enter second no.: "
num2 =gets.chomp.to_f


if op == "+"
	puts ("Result: "+ (num1+num2).to_s)


elsif op == "-"
	puts ("Result: "+ (num1-num2).to_s)


elsif op == "*"
	puts ("Result: "+ (num1*num2).to_s)


elsif op == "/"
	puts ("Result: "+ (num1/num2).to_s)

else
	puts "Invalid operator entered"
end

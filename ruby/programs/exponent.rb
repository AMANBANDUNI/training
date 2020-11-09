def pow(base_num,pow_num)
	result=1
	pow_num.times do
		result=result*base_num
	end
	return result
end

puts "Enter base number: "
b = gets.chomp().to_i
puts "Enter power number: "
p = gets.chomp().to_i

puts ("#{b}^#{p} = "+ pow(b,p).to_s)

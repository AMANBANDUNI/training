y=2000

until y==2021
	if (y%400==0 or (y%4==0 and y%100!=0))
	        puts "#{y} is a leap year"
	else
	        puts "#{y} is not a leap year"
	end
	y+=1
end


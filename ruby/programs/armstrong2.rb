num=1
until num ==1001
		count=0
		temp=num
		an=0
		while temp!=0
			count+=1
			temp/=10
		end
		temp=num
		count.times do |i|
			d=temp%10
			an+=(d**count)	
			temp/=10
		end
		if num==an
			puts "#{an} is armstrong no."
#		else
#			puts "#{an} is not armstrong"
		end
		num+=1
end

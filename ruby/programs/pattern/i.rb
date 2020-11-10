def i
s1=3
s2=1
5.times do |i|
	s1.times do |j|
		if (j==0 and i==1) or (j==2 and i==1)or(j==0 and i==2)or(j==2 and i==2)or(j==0 and i==3)or(j==2 and i==3)
			print" "
		else
			print "#"
		end
	end
print "\n"
end
end

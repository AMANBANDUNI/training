def p
s1=3
s2=1
5.times do |i|
	if i<3
		s1.times do |j|
			if i==1 and j==1
				print" "
			else
				print"@"
			end
		end
	else
		s2.times do |j|
			print"@"
		end
	end
	print"\n"
end
end

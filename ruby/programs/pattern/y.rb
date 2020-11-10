def y
sp=4
5.times do |i|
	sp.times do |j|
		if (j==0 and i==0) or (j==1 and i==1)
			print"@"
		else 
			print" "
		end
	end
	sp-=1
	print"@\n"
end
end

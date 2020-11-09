s=3
5.times do |i|
	s.times do |j|
		if j==1 and i!=2
			print" "
			next
		end
		print "@"
	end
	print"\n"
end

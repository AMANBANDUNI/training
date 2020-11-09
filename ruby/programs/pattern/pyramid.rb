puts "Enter a no.: "
r=gets.chomp().to_i
st=1
sp=r-1
r.times do |i|
	sp.times do |j|
		print "  "
	end
	st.times do |j|
		print "@ "
	end
	sp-=1
	st+=2
	print "\n"
end

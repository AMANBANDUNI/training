sp=4
st=1
5.times do |i|
	sp.times do |j|
		print" "
	end
	if i==2
		st.times do |k|
			print"@"
		end
	else
		st.times do |k|
			if k==0 or k==(st-1)
				print"@"
			else 
				print" "
			end
		end
		#st+=2
	end
	st+=2
	print"\n"	
	sp-=1
end

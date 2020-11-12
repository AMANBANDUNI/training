def d
s=3
5.times do |i|
	s.times do |j|
		if(j==2 and i==0) or (j==1 and i==1)or(j==1 and i==2)or(j==1 and i==3)or(j==2 and i==4)
			print " "
		else
			print"#"
		end
	end
print"\n"
end
end
def h
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
end
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
def k
s=4
5.times do |i|
	s.times do |j|
		if j==0 or( j==1 and i==2) or (j==2 and i==1) or (j==3 and i==0) or (j==2 and i==3)or (j==3 and i==4)
			print "@"
		else
			print " "
		end
	end
print "\n"
end
end
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
def r
s=3
5.times do |i|
	s.times do |j|
		if (i==1 and j==1)or (j==2 and i==3)or(j==1 and i==4)
			print" "
		else
			print"@"
		end
	end
print"\n"
end
end
def s
s=3
5.times do |i|
	s.times do |j|
		if (i==1 and j==1)or (j==2 and i==1)or(j==0 and i==3)or(j==1 and i==3)
			print" "
		else
			print"@"
		end
	end
print"\n"
end
end
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

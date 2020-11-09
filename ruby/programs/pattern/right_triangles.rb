class Triangle
	def l_right_triangle(r)
		@r=r
		st=1
		(@r).times do |i|
			st.times do |j|
				print "@ "
			end
			st+=1
			print "\n"
		end
	end
	
	def r_right_triangle(r)
		@r=r
		st=1
		sp=r-1
		(@r).times do |i|
			sp.times do |j|
				print "  "
			end
			st.times do |j|
				print "@ "
			end
			st+=1
			sp-=1
			print "\n"
		end
	end
end

obj1=Triangle.new
puts "Enter a no.: "
r=gets.chomp().to_i
obj1.l_right_triangle(r)
obj1.r_right_triangle(r)

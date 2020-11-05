for i in (0..5)
	if i==2
		puts ("value of local variable = #{i}")
		redo
	end
end

# Here it will run an infinite loop.

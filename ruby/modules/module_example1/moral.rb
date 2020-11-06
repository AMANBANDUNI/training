module Moral
	VERY_BAD=100
	BAD=70
	def Moral.sin(badness)
		@badness=badness
		puts "badness level = #{@badness}"
	end
end



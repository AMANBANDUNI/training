module A
	def a
		puts "i am in method a of module A"
	end
	
	def b
		puts "i am in method b of module A"
	end
end

module B
	def c
		puts "i am in method c of module B"
	end

	def d
		puts "i am in method d of module B"
	end
end


class Sample
include A
include B
	def e
		puts "i am in method e of class Sample"
	end
end


samp=Sample.new
samp.e
samp.a
samp.b
samp.c
samp.d

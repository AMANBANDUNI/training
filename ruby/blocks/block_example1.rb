=begin
The yield Statement [without parameters]
Let's look at an example of the yield statement −

=end



def test
	puts "You are in method"
	yield
	puts "you are again in the method"
	yield
end
test {puts "You are in the block"}

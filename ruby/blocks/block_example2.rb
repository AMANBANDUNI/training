=begin
You also can pass parameters with the yield statement. Here is an example −
=end


def test
	puts "You are in method"
	yield 1
	puts "you are back in method"
	yield 5
end
test {|i| puts "You are in block #{i}"}


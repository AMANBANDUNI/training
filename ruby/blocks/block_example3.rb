# You can also pass more than one parameters to the block from the method 



def test
	puts "you are in method"
	yield 5,7
	puts "you are back in method"
	yield 8,9
end
test {|a,b| puts "you are in block #{a} , #{b}"}



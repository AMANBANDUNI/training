=begin
Blocks and Methods:

Note: if the last argument of a method is preceded by &, then you can pass a block to this method and this block will be assigned to the last parameter. 
	In case both * and & are present in the argument list, & should come later.
=end


def test(&block)
	block.call 5
	puts "You are in method"
	yield 5
end
test {|a| puts "you are in block #{a}"}


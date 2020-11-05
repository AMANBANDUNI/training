#Ruby - Blocks

You have seen how Ruby defines methods where you can put number of statements and then you call that method. Similarly, Ruby has a concept of Block.

=>	A block consists of chunks of code.

=>	You assign a name to a block.

=>	The code in the block is always enclosed within braces ({}).

=>	A block is always invoked from a function with the same name as that of the block. This means that if you have a block with the name test, then you use the function test to invoke this block.

=>	You invoke a block by using the yield statement.



Syntax:

	block_name {
	   statement1
	   statement2
	   ..........
	}

	Note: Here, you will learn to invoke a block by using a simple yield statement. You will also learn to use a yield statement with parameters
		for invoking a block. You will check the sample code with both types of yield statements.


	The yield Statement:
	The yield statement is used to invoke the block in the function.



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------


=> If you want to pass more than one parameters, then the yield statement becomes −

	yield a, b
	and the block is −

	test {|a, b| statement}
	The parameters will be separated by commas.



	But if the last argument of a method is preceded by &, then you can pass a block to this method and this block will be assigned to the last parameter.
	 In case both * and & are present in the argument list, & should come later.




# BLOCKS AND METHODS

=>
Example:
	def test(&block)
	   block.call
	end
	test { puts "Hello World!"}

	This will produce the following result −
	
	Hello World!




-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


=>

# BEGIN and END Blocks:

	Every Ruby source file can declare blocks of code to be run as the file is being loaded (the BEGIN blocks) and after the program has finished executing
	 (the END blocks).


	Note: A program may include multiple BEGIN and END blocks. BEGIN blocks are executed in the order they are encountered. END blocks are executed in
		 reverse order. When executed, the above program produces the following result −



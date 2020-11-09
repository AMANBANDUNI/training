		# Ruby - Exceptions / Error Handling 


	The execution and the exception always go together. If you are opening a file, which does not exist, then if you did not handle this situation properly, 
	then your program is considered to be of bad quality.

	The program stops if an exception occurs. So exceptions are used to handle various type of errors, which may occur during a program execution and take 
	appropriate action instead of halting program completely.

	Ruby provide a nice mechanism to handle exceptions. We enclose the code that could raise an exception in a begin/end block and use rescue clauses to 
	tell Ruby the types of exceptions we want to handle.


	Syntax: 
	begin  
	# -  
	rescue OneTypeOfException  
	# -  
	rescue AnotherTypeOfException  
	# -  
	else  
	# Other exceptions
	ensure
	# Always will be executed
	end
	



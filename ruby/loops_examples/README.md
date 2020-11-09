# Loops

Loops in Ruby are used to execute the same block of code a specified number of times.

Loops can also be sub divided in 2 parts:
i) Condition based repetition => Which repeats until the specific condtion returns true. [e.g. while loop]

ii) Range based repetition => Which repeats in a specific range mentioned. [e.g. for loop]


There are 10 statements which we will use in loops in ruby.

1) Ruby while statement		2) Ruby while modifier statement	3) Ruby until statement		4) Ruby until modifier statement
5) Ruby for statement		6) Ruby each do statement		7) Ruby break statement		8) Ruby next statement 
9) Ruby Redo statement		10) Ruby Retry statement (Doubt in retry statment../ unable to use / always saying invalid syntax)




1) Ruby while statment
	Syntax:
		while <conditional> do
		   code
		end 

	Note: Executes code while conditional is true. A while loop's conditional is separated from code by the
		 reserved word do, a newline, backslash \, or a semicolon ;.


2) Ruby while modifier
	Syntax:
		<code> while <condition>

			OR

		begin 
		  <code> 
		end while <conditional>


	Note: Executes code while conditional is true.

		If a while modifier follows a begin statement with no rescue or ensure clauses, 
		code is executed once before conditional is evaluated.


3) Ruby until Statement:
	Syntax:
		until <conditional> [do]
		   code
		end
	Note: Executes code while conditional is false. An until statement's conditional is separated from code by the reserved word do, a newline, or a semicolon.


4) Ruby until modifier:
	Syntax:
		<code> until <conditional>

			OR

		begin
		   <code>
		end until <conditional>


	Note: Executes code while conditional is false.
		If an until modifier follows a begin statement with no rescue or ensure clauses, code is executed once before conditional is evaluated.


5) Ruby for Statement:
	Syntax:
		for variable [, variable ...] in expression [do]
		   <code>
		end
	Note: Executes code once for each element in expression.



6) each do:
	Note: A for...in loop is almost exactly equivalent to this each do 
		
	Syntax:
		(expression).each do |variable[, variable...]| code end



	Note: except that a for loop doesn't create a new scope for local variables.
		 A for loop's expression is separated from code by the reserved word do, a newline, or a semicolon.





	=> Reverse iteration / Reverse loop
	Syntax/example:
			(0..5).reverse_each do |i|
			  # do something
			end





7) Ruby Break statement:
	Syntax: 
		break

	Note: Terminates the most internal loop. Terminates a method with an associated block if called within the block (with the method returning nil).


8) Ruby next Statement:
	Syntax:
		next
	Note: Jumps to the next iteration of the most internal loop. Terminates execution of a block if called within a block (with yield or call returning nil).



9) Ruby redo Statement:
	Syntax:
		redo
	Note: Restarts this iteration of the most internal loop, without checking loop condition. Restarts yield or call if called within a block.



10) Ruby retry Statement:

	10.1) 
		Syntax:
			retry
		Note: If retry appears in rescue clause of begin expression, restart from the beginning of the begin body.
		
		Syntax:
		begin
		   do_something # exception raised
		rescue
		   # handles error
		   retry  # restart from beginning
		end

	10.2)
		Note: If retry appears in the iterator, the block, or the body of the for expression, restarts the invocation of the iterator call. Arguments to the iterator is re-evaluated.
		
		Syntax:
		for i in 1..5
		   retry if some_condition # restart from i == 1
		end




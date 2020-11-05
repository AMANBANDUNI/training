
#Conditional Statements includes
a) if ,end
b) if ,else ,end
c) if , elsif , end
d) nested if-else statements


e) ruby if modifier statement:
	 syntax:  
	<code> if <condition>
	Note: Executes code if the conditional is true.

f) ruby unless statement / unless else statement:
	syntax: 
	unless conditional [then]
	   code
	[else
	   code ]
	end

	note: Executes code if conditional is false. If the conditional is true, code specified in the else clause is executed.


g) ruby unless modifier statement:
	Syntax:
	<code> unless <conditional>
	Note: Executes code if conditional is false.



h) ruby case statement

	Note: Compares the expression specified by case and that specified by when using the === operator and executes the code of the
		 when clause that matches.

		The expression specified by the when clause is evaluated as the left operand. If no when clauses match,
		 case executes the code of the else clause.
	
		A when statement's expression is separated from code by the reserved word then, a newline, or a semicolon. Thus −


	Syntax: 

	case expr0
	when expr1, expr2
	   stmt1
	when expr3, expr4
	   stmt2
	else
	   stmt3
	end


	which is similar to-
	_tmp = expr0
	if expr1 === _tmp || expr2 === _tmp
	   stmt1
	elsif expr3 === _tmp || expr4 === _tmp
	   stmt2
	else
	   stmt3
	end




Return Values from Methods:
Every method in Ruby returns a value by default. This returned value will be the value of the last statement. 

For example −
def test
   i = 100
   j = 10
   k = 0
end
This method, when called, will return the last declared variable k.



Note:

a) The return statement in ruby is used to return one or more values from a Ruby Method.

b) If more than two expressions are given, the array containing these values will be the return value. If no expression given, nil will be the return value.



c) Variable Number of Parameters:

	Suppose you declare a method that takes two parameters, whenever you call this method, you need to pass two parameters along with it.
	
	However, Ruby allows you to declare methods that work with a variable number of parameters. Let us examine a sample of this −


d) Class Methods:

	When a method is defined outside of the class definition, the method is marked as private by default. On the other hand, the methods defined in the 
	class definition are marked as public by default. The default visibility and the private mark of the methods can be changed by public or private of the Module.

	Whenever you want to access a method of a class, you first need to instantiate the class. Then, using the object, you can access any member of the class.

	Ruby gives you a way to access a method without instantiating a class. Let us see how a class method is declared and accessed −


	e.g. -
		class Accounts
		   def reading_charge
		   end
		
		   def Accounts.return_date
		   end
		end


	See how the method return_date is declared. It is declared with the class name followed by a period, which is followed by the name of the method.
	 You can access this class method directly as follows −

		Accounts.return_date


	Note: To access this method, you need not create objects of the class Accounts.

# Doubt

e) Ruby alias Statement: 

	This gives alias to methods or global variables. Aliases cannot be defined within the method body. The alias of the method keeps the current definition
	 of the method, even when methods are overridden.
	
	Making aliases for the numbered global variables ($1, $2,...) is prohibited. Overriding the built-in global variables may cause serious problems.
	
	Syntax:
		alias method-name method-name
		alias global-variable-name global-variable-name

		Example:
			alias foo bar
			alias $MATCH $&
		Here we have defined foo alias for bar, and $MATCH is an alias for $&



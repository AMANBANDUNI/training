# Ruby - Strings:

Note: String Literals
	Ruby strings are simply sequences of 8-bit bytes and they are objects of class String. Double-quoted strings allow substitution and 
	backslash notation but single-quoted strings don't allow substitution and allow backslash notation only for \\ and \'



Expression Substitution:

Expression substitution is a means of embedding the value of any Ruby expression into a string using #{ and } −

Example:

	x, y, z = 12, 36, 72
	puts "The value of x is #{ x }."
	puts "The sum of x and y is #{ x + y }."
	puts "The average was #{ (x + y + z)/3 }."


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# General Delimited Strings:

	With general delimited strings, you can create strings inside a pair of matching though arbitrary delimiter characters, 
	e.g., !, (, {, <, etc., preceded by a percent character (%). Q, q, and x have special meanings. General delimited strings can be −

	%{Ruby is fun.}  equivalent to "Ruby is fun."
	%Q{ Ruby is fun. } equivalent to " Ruby is fun. "
	%q[Ruby is fun.]  equivalent to a single-quoted string
	%x!ls! equivalent to back tick command output `ls`





----------------------------------------------------------------------------------------------------------------------------------------------------------


# Character Encoding:

	The default character set for Ruby is ASCII, whose characters may be represented by single bytes. If you use UTF-8, or another 
	modern character set, characters may be represented in one to four bytes.

	You can change your character set using $KCODE at the beginning of your program, like this −

	$KCODE = 'u'



	The following are the possible values ​​of $KCODE (CHARACTER SET)

	a => ASCII(same as none). This is default.
 
	e => EUC

	n => None(same as ASCII).
	
	u => UTF-8




-------------------------------------------------------------------------------------------------------------------------------------------------------------------

# String Built-in Methods:

	We need to have an instance of String object to call a String method. Following is the way to create an instance of String object −

	new [String.new(str = "")]

	This will return a new string object containing a copy of str. Now, using str object, we can all use any available instance methods.
	
	 For example −


		myStr = String.new("THIS IS TEST")
		foo = myStr.downcase

		puts "#{foo}"
		This will produce the following result −
	
		this is test
------------------------------------------------------------------------------------------------------------------------------------------------------

# Changing a Section of a String:

	myString = "Welcome to JavaScript!"
	
	myString["JavaScript"]= "Ruby"

	puts myString
	=> "Welcome to Ruby!"	

-----------------------------------------------------------------------------------------------------------------------------------------------------

# Method to Removing all the spaces in a string.

	strip => 

-----------------------------------------------------------------------------------------------------------------------------------------------------

# Doubts :



a) What is the use of Different character set $KCODE = 'u' or 'a' etc.


b) String unpack Directives:

	The string decompression instruction:

	method for understanding the compression command String#unpack.

	# Ruby - Hashes:


	Note : Hashes in ruby is like the Dictionary in Python. Which has the collection of Key value pairs.

	A Hash is a collection of key-value pairs like this: "employee" = > "salary". It is similar to an Array, except that indexing 
	is done via arbitrary keys of any object type, not an integer index.

	The order in which you traverse a hash by either key or value may seem arbitrary and will generally not be in the insertion order. 
	If you attempt to access a hash with a key that does not exist, the method will return nil.




Creating Hashes:

As with arrays, there is a variety of ways to create hashes. You can create an empty hash with the new class method −

	example:
		months = Hash.new


	You can also use new to create a hash with a default value, which is otherwise just nil −


	example:
		months = Hash.new( "month" )

		or

		months = Hash.new "month"


	Note: When you access any key in a hash that has a default value, if the key or value doesn't exist, accessing the hash will 
		return the default value −




	example: 
		months = Hash.new( "month" )
	
		puts "#{months[0]}"
		puts "#{months[72]}"

		This will produce the following result −
		
		month
		month
	

	example:
		H = Hash["a" => 100, "b" => 200]

		puts "#{H['a']}"
		puts "#{H['b']}"

		This will produce the following result −

		100
		200


-------------------------------------------------------------------------------------------------------------------------------------------------------
	# Note: You can use any Ruby object as a key or value, even an array, so the following example is a valid one −

	[1,"jan"] => "January"







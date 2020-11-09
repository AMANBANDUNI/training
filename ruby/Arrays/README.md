				# Ruby - Arrays:


Ruby arrays are ordered, integer-indexed collections of any object. Each element in an array is associated with and referred to by an index.

Array indexing starts at 0, as in C or Java. A negative index is assumed relative to the end of the array --- that is, an index of -1 
indicates the last element of the array, -2 is the next to last element in the array, and so on.

Ruby arrays can hold objects such as String, Integer, Fixnum, Hash, Symbol, even other Array objects. Ruby arrays are not as rigid as 
arrays in other languages. Ruby arrays grow automatically while adding elements to them.




Creating Arrays:

	There are many ways to create or initialize an array. One way is with the new class method −

	names = Array.new
	You can set the size of an array at the time of creating array −

	names = Array.new(20)
	The array names now has a size or length of 20 elements. You can return the size of an array with either the size or length methods −


	Example: 
		names = Array.new(20)
		puts names.size  # This returns 20
		puts names.length # This also returns 20





	You can assign a value to each element in the array as follows −

	Example:
		names = Array.new(4, "mac")
		puts "#{names}"

		This will produce the following result −

		["mac", "mac", "mac", "mac"]




--------------------------------------------------------------------------------------------------------------------------------------------------

# Block in array

You can also use a block with new, populating each element with what the block evaluates to −



	nums = Array.new(10) { |e| e = e * 2 }
	puts "#{nums}"

	This will produce the following result −

	[0, 2, 4, 6, 8, 10, 12, 14, 16, 18]



	=> There is another method of Array, []. It works like this −

		nums = Array.[](1, 2, 3, 4,5)

	=> One more form of array creation is as follows −

		nums = Array[1, 2, 3, 4,5]



------------------------------------------------------------------------------------------------------------------------------------------------------


# Kernel Module /  Range as an argument to create an array of digits.

	Note: Here, the method takes a range as an argument to create an array of digits −


	The Kernel module available in core Ruby has an Array method, which only accepts a single argument. Here, the method takes a range 
	as an argument to create an array of digits −


	Example:
		digits = Array(0..9)
		puts "#{digits}"
		This will produce the following result −

		[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]





-----------------------------------------------------------------------------------------------------------------------------------------------------



# Array Built-in Methods:

	We need to have an instance of Array object to call an Array method. As we have seen, following is the way to create an 
	instance of Array object −

	Array.[](...) [or] Array[...] [or] [...]

	This will return a new array populated with the given objects. Now, using the created object, we can call any available 
	instance methods. 

	For example −
			digits = Array(0..9)
			num = digits.at(6)
			puts "#{num}"
		
			This will produce the following result −
	
			6



---------------------------------------------------------------------------------------------------------------------------------------------------


	# Array pack Directives: (Doubt)


	Doubts



--------------------------------------------------------------------------------------------------------------------------------------------------------


	# Array Built in Methods / Modifying Arrays


=> Adding Values to Arrays: 
	
	a) Adding value to the end of an array.:
	
		you can add values to the array using <<:
	
			Example:
				a << 32
				a << 'carrot'
				
				OR
	
		 or by using push method:
			or use a method instead of an operator, either of these is equivalent to the preceding line:
	
			Example:
				a.push 'carrot'
				a.push('carrot')

	b) Adding/inserting value in the begining of an array.:

		Method name: unshift
		Syntax: .ushift()
			<array_name>.unshift(<value>)

		Example: 
			writers.unshift('Hodgman')

	c) Adding/inserting value to a specific index: (Using .insert(_,_) method)

		Syntax: .insert(_,_)

		<array_name>.insert(<index_name>,<value_of_any_datatype> )




	d) Deleting last entered value from the array:
		

		Syntax: .pop()
		
		<array_name>.pop()

		Example: writers.pop()


	e) Deleting specific value from the array:
		
		Syntax: .delete(<value_name>)

		Example: 
			writers.delete('Hodgman')


	f) Changing values in an array:
		Syntax: 
			<array_name>[<index_name>] = <new_value>
		Example: 
			writers[1]='peaky'
	
	g) To know about the size/length of an array:
	
		Syntax: 
			<array_name>.length()	or	<array_name>.size()

	h) To check for a specific value is present in array or not:

		We use .include method to check for a specific value in an array. 
		Note: It will return a boolean value "true" if found and "false" if not.
		
		Syntax:
			<array_name>.include? <value_name>


	i) Reverse the order of an array:
		Note: We can also reverse the order of an array.
		
		Syntax: 
			<array_name>.reverse()

	j) Clone / Copy : 
		To make a Copy of an array.

		Syntax: 
			.clone()



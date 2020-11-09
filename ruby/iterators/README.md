# Ruby - Iterators:

Iterators are nothing but methods supported by collections. Objects that store a group of data members are called collections. 
In Ruby, arrays and hashes can be termed collections.

Iterators return all the elements of a collection, one after the other. We will be discussing two iterators here, each and collect. Let's look at these in detail.


	a) Ruby each Iterator
	
	The each iterator returns all the elements of an array or a hash.


	Syntax:
		collection.each do |variable|
		   code
		end


	Note: Executes code for each element in collection. Here, collection could be an array or a ruby hash.

	Example: 
		ary = [1,2,3,4,5]
		ary.each do |i|
		   puts i
		end


	Note: You always associate the each iterator with a block. It returns each value of the array, one by one, to the block. 
		The value is stored in the variable i and then displayed on the screen.




	b) Ruby collect Iterator:

	The collect iterator returns all the elements of a collection.

	
	Syntax:
		collection = collection.collect

	Note: The collect method need not always be associated with a block. The collect method returns the entire collection, regardless of whether 
		it is an array or a hash.



	Example: 
		a = [1,2,3,4,5]
		b = Array.new
		b = a.collect
		puts b


	NOTE − The collect method is not the right way to do copying between arrays. There is another method called a clone, which should be used to 
		copy one array into another array.

		You normally use the collect method when you want to do something with each of the values to get the new array. For example, this code 
		produces an array b containing 10 times each value in a.


	Example: 
		a = [1,2,3,4,5]
		b = a.collect{|x| 10*x}
		puts b





c) Reverse iteration / Reverse loop

Syntax / example:

	(0..5).reverse_each do |i|
	  # do something
	end

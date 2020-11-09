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

---------------------------------------------------------------------------------------------------------------------------------------------------------------

Create hash using block (Ruby):

		foo = Hash.new do |f|
		  f[:apple] = "red"
		  f[:orange] = "orange"
		  f[:grape] = "purple"
		end
		foo.inspect # => {}
		foo[:nosuchvalue] # => "purple"
		foo # => {:apple=>"red", :orange=>"orange", :grape=>"purple"}	
	

			OR

	Example: 

		foo = {
		  apple:  'red',
		  orange: 'orange',
		  grape:  'purple'
		}


-------------------------------------------------------------------------------------------------------------------------------------------------------

	# Fetching Hash Values:	

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






-------------------------------------------------------------------------------------------------------------------------------------------------------


	# Modifying hashes in Ruby: 

	Note: Hash can be modified by adding or deleting a key value/pair in an already existing hash. Also, you can change the existing value of key in the hash.


	Example:
		# creating hash using {} braces 
		geeks_hash1 = {"DS" => 1, "Java" => 2} 
  
		puts "Before Modifying"
  
		# fetching values of hash using [] 
		puts geeks_hash1['DS']    
		puts geeks_hash1['Java']   
  
		puts "\n"
  
		puts "After Modifying"
  
		# modifying hash values 
		geeks_hash1["DS"] = 4
		geeks_hash1["Java"] = 5
  
		# fetching values of hash using [] 
		puts geeks_hash1['DS']  
		puts geeks_hash1['Java']





		Output:

		Before Modifying
		1
		2

		After Modifying
		4
		5




---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Hash Built-in Methods:

	Syntax: 
		<Hash_variable>.<method_name>
	

	a) .keys => Returns a new array containing all the keys of hash.
	b) .values => Returns a new array containing all the values of hash.

	Example:
		$, = ", "
		months = Hash.new( "month" )
		months = {"1" => "January", "2" => "February"}

		keys = months.keys
		puts "#{keys}"$, = ", "
		months = Hash.new( "month" )
		months = {"1" => "January", "2" => "February"}

		keys = months.keys
		puts "#{keys}"



		This will produce the following result −

		["1", "2"]




	c) .clear => Removes all key-value pairs from hash.
	
	d) .default(key = nil) => Returns the default value for hash, nil if not set by default=. ([] returns a default value if the key does not exist in hash.)

	e) .default = obj => Sets a default value for hash.

	f) hash.default_proc => Returns a block if hash was created by a block.

	g) hash.delete(key) [or] array.delete(key) { |key| block } => Deletes a key-value pair from hash by key. If block is used, returns the result of a 
									block if pair is not found. Compare delete_if.
	h) hash.invert => Creates a new hash, inverting keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys.

	i) hash.length => Returns the size or length of hash as an integer.

	
	j) hash.values_at(obj, ...)=> Returns a new array containing the values from hash that are associated with the given key or keys.

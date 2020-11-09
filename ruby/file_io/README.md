		# Ruby - File I/O

The puts Statement

The gets Statement

The putc Statement

The print Statement

------------------------------------------------------------------------------------------------------------------------------------------

	# Opening and Closing Files:
	
	Until now, you have been reading and writing to the standard input and output. Now, we will see how to play with actual data files.



	=> The File.new Method:

	You can create a File object using File.new method for reading, writing, or both, according to the mode string. Finally, you can use File.close method to close that file.

	Syntax:
		aFile = File.new("filename", "mode")
		   # ... process the file
		aFile.close

	=> The File.open Method:

	You can use File.open method to create a new file object and assign that file object to a file. However, there is one difference in between File.open and File.new methods. The difference is that the File.open method can be associated with a block, whereas you cannot do the same using the File.new method.

	Syntax:
		File.open("filename", "mode") do |aFile|
		   # ... process the file
		end



--------------------------------------------------------------------------------------------------------------------------------------------------


	# Reading Files: => For this we use mode "r"

	Example: 
		File.open("employees.txt","r") do |file|
		puts file.readlines()[2]
		end

		# OR

		afile = File.new("employees.txt","r")
		puts afile.read()
		afile.close





-------------------------------------------------------------------------------------------------------------------------------------------------------

	# Writing Files

	a) Writing at the end of the file or / Append data in a file: => For this we use mode "a"

	# Append details to the existing file.

	Example: 
		afile = File.new("employees.txt","a")
		        afile.write("\nJasmeet singh,  BDE")
		afile.close
		# OR

		File.open("employees.txt","a") do |file|
		file.write("\nRajat Banduni, HM")
		end




	b) To overwrite or make any kind of other changes Or We can create a new file using this mode => For this we use mode "w"




	c) Mode r+ 

	d) Mode w+ 





--------------------------------------------------------------------------------------------------------------------------------------------------------

	# Renaming and Deleting Files:

	You can rename and delete files programmatically with Ruby with the rename and delete methods.

	Following is the example to rename an existing file test1.txt −

	Example:
		# Rename a file from test1.txt to test2.txt
		File.rename( "test1.txt", "test2.txt" )


	Following is the example to delete an existing file test2.txt −
	
	Example:
		# Delete file test2.txt
		File.delete("test2.txt")




----------------------------------------------------------------------------------------------------------------------------------------------------------------

	# File Modes and Ownership:

	Use the chmod method with a mask to change the mode or permissions/access list of a file


	Following is the example to change mode of an existing file test.txt to a mask value −

	Example:
		file = File.new( "test.txt", "w" )
		file.chmod( 0755 )


-------------------------------------------------------------------------------------------------------------------------------------------------------------------

	# File Inquiries:

	The following command tests whether a file exists before opening it −

#!/usr/bin/ruby

File.open("file.rb") if File::exists?( "file.rb" )
The following command inquire whether the file is really a file −

#!/usr/bin/ruby

# This returns either true or false
File.file?( "text.txt" ) 
The following command finds out if the given file name is a directory −

#!/usr/bin/ruby

# a directory
File::directory?( "/usr/local/bin" ) # => true

# a file
File::directory?( "file.rb" ) # => false
The following command finds whether the file is readable, writable or executable −

#!/usr/bin/ruby

File.readable?( "test.txt" )   # => true
File.writable?( "test.txt" )   # => true
File.executable?( "test.txt" ) # => false
The following command finds whether the file has zero size or not −

#!/usr/bin/ruby

File.zero?( "test.txt" )      # => true
The following command returns size of the file −

#!/usr/bin/ruby

File.size?( "text.txt" )     # => 1002
The following command can be used to find out a type of file −

#!/usr/bin/ruby

File::ftype( "test.txt" )     # => file



The ftype method identifies the type of the file by returning one of the following − file, directory, characterSpecial, blockSpecial, fifo, link, socket, or unknown.

The following command can be used to find when a file was created, modified, or last accessed −

#!/usr/bin/ruby

File::ctime( "test.txt" ) # => Fri May 09 10:06:37 -0700 2008
File::mtime( "text.txt" ) # => Fri May 09 10:44:44 -0700 2008
File::atime( "text.txt" ) # => Fri May 09 10:45:01 -0700 2008


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	# Directories in Ruby:

=> To change directory within a Ruby program, use Dir.chdir as follows. This example changes the current directory to /usr/bin.

	Dir.chdir("/usr/bin")


=> You can find out what the current directory is with Dir.pwd −

	puts Dir.pwd # This will return something like /usr/bin



=> You can get a list of the files and directories within a specific directory using Dir.entries −

	puts Dir.entries("/usr/bin").join(' ')



=> Dir.entries returns an array with all the entries within the specified directory. Dir.foreach provides the same feature −

	Dir.foreach("/usr/bin") do |entry|
	   puts entry
	end



=> An even more concise way of getting directory listings is by using Dir's class array method −

	Dir["/usr/bin/*"]





---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	# Creating a Directory: 

	The Dir.mkdir can be used to create directories −

	Dir.mkdir("mynewdir")

	
	You can also set permissions on a new directory (not one that already exists) with mkdir −

	NOTE − The mask 755 sets permissions owner, group, world [anyone] to rwxr-xr-x where r = read, w = write, and x = execute.

	Dir.mkdir( "mynewdir", 755 )





	Deleting a Directory:
	
	The Dir.delete can be used to delete a directory. The Dir.unlink and Dir.rmdir performs exactly the same function and are provided for convenience.

	Dir.delete("testdir")




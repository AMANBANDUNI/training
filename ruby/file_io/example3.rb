# Renaming and Deleting files
=begin
# Renaming a file name
File.rename("Sample1.txt","Sample2.txt")
=end


=begin
# Deleting file
File.delete("Sample2.txt")
=end

# Creating a new file and after that/  File Modes and Ownership:

file = File.new("sample2.txt","w")
file.chmod(0755)


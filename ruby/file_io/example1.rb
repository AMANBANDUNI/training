# Reading Files

=begin
File.open("employees.txt","r") do |file|
puts file.readlines()[2]
end
=end
# OR

afile = File.new("employees.txt","r")

puts afile.read()
afile.close

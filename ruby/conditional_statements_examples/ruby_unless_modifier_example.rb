=begin
Syntax:

<code> unless <conditional>

Note: Executes code if conditional is false.

=end




=begin
print("Enter a value of var1= ")
var1=gets().to_i
puts ("#{var1} is less than 10") if var1<10
puts ("#{var1} is greater than or equal to 10") unless var1<10
=end


$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" unless $var

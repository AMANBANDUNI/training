puts "A string in \"double qoutes\""

puts 'A string in \'single quotes\''

# Using substitution

# Note: We can use substitution in double quotes but not in single quotes.
puts "\nA string in double qoutes has value = #{10*5}"

# In single quotes it will not give the value since the substitution can't be done here, it will print it as a string.
puts '\nA string in single qoutes \\\has \'value\' = #{9*5}'
print "\n"
puts 'Won\'t you read O\'Reilly\'s book?'

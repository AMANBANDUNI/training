puts %{ Ruby is fun. #{10+5} }
print "\n"
puts %Q{ Ruby is fun. #{15+5}\n}

puts %q<Ruby is fun. #{25+5}>

puts %q[Ruby is fun. /n]

print"\n"
puts %x!pwd!
puts %x<ls>

print "\n"


p %x!pwd!
p %x<ls>

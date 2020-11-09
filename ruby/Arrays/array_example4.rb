friends= Array["anku","chinu","rajat","nanu"]


puts "#{friends}"

friends.push("tina")
puts "#{friends}"

friends.pop
puts "#{friends}"

friends << "mini"

puts "#{friends}"

print "\n"

friends.insert(4,'tina')
puts "#{friends}"
puts friends.inspect

print"\n"
friends.unshift("Sonu")
puts friends.inspect()

print "\n"
friends.delete("Sonu")
puts friends.inspect


print "\n"
friends[5]="mentos"
puts friends.inspect

print "\n"
puts friends.include? "mentos"

friends.push(5)
print "\n"
puts friends.include? 5

print("\n")
puts friends.reverse().inspect
puts friends.inspect

friends.pop()
puts friends.sort().inspect

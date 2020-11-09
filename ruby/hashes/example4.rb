
	# Create hash using block (Ruby):

=begin
hash1 = Hash.new do |i|
	i[:apple] = "red"
  	i[:orange] = "orange"
  	i[:grape] = "purple"
end

puts hash1.each{apple}

# Note: Returns a block if hash was created by a block.
=end


foo = {
  apple:  'red',
  orange: 'orange',
  grape:  'purple',
  number: 5,
  [1,"jan"]=> 1
}
puts "#{foo.keys}"

#puts foo.default_proc

# Returns a block if hash was created by a block.


#-------------------------------------------------------------------------


foo.delete('orange')
print"\n"
puts "#{foo}"
print"\n"

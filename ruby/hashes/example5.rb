foo = Hash.new do |f|
  f[:apple] = "red"
  f[:orange] = "orange"
  f[:grape] = "purple"
end
puts foo.inspect # => {}
puts foo[:nosuchvalue] # => "purple"
puts foo # => {:apple=>"red", :orange=>"orange", :grape=>"purple"}
puts foo[10]

# NOte: Here the last value purple be the default value of the hash.

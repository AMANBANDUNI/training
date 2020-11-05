
=begin
animals = %w(dog cat horse parrot goat shrimp snail cow)
count = 0

for animal in animals
    puts "The current animal is #{animal}"
    break if count == 10
    count += 1
    retry if animal == 'horse'
end
=end



for i in (1..5)
	retry if i>2
puts ("value of local variable is #{i}")
end

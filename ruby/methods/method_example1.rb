# Method parameter passing but not returning values.

def test(a1 = "Ruby", a2 = "Perl" , a3 = "js")
   puts "The programming language is #{a1}"
   puts "The programming language is #{a2}"
   puts "The Programming language is #{a3}"
end
test "C", "C++"
test

class Basic_programs
        def reverse(num)
                @num=num
                rev=0
                until num==0
                        d=num%10
                        rev=rev*10 + d
                        num/=10
                end
                return rev
        end
	def is_pallindrome(num)
		@num=num
		if @num==reverse(@num)
			return "pallindrome"
		else
			return "not pallindrome"
		end
	end
end

o1=Basic_programs.new
puts"Enter a no. : "
n= gets.chomp().to_i
puts o1.is_pallindrome(n)


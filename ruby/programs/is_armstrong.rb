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

	def is_armstrong(num)
		@num=num
		count=0
		temp=num
		an=0
		while temp!=0
			count+=1
			temp/=10
		end
		temp=@num
		count.times do |i|
			d=temp%10
			an+=(d**count)	
			temp/=10
		end
		if @num==an
			return "no. is armstrong"
		else
			return "no. is not armstrong"
		end
	end
end

o1=Basic_programs.new
puts"Enter a no. : "
n= gets.chomp().to_i
puts o1.is_armstrong(n)

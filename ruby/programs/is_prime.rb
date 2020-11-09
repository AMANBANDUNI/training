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
                temp=num
                rev=0
                while temp!=0
                        d=temp%10
                        rev=rev*10 + d
                        temp/=10
                end
                if @num==rev
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

	def is_perfect_no(num)
		@num=num
		temp=num
		res=0
		d=Array.new
		for i in 1...num
			if @num%i==0
				d.push(i)
				res+=i
			end
		end
		puts "Divisors: #{d}"
		if (res==@num)
			return "Its a perfect no."
		else
			return "Its not a perfect no."
		end
	end
	
	def factorial(num)
		@num=num
		temp=num
		fact=1
		print "#{@num}! = "
		(1..num).reverse_each do |i|
			if i==1
				puts "#{i} = #{fact}"
			else
				fact*=i
				print "#{i} x "
			end
		end
	end

	def is_prime(num)
		@num=num
		for i in 2...num
			if @num%i==0
				return "Not prime"
			end
		end
			return "Prime"
	end
end

o1=Basic_programs.new
puts"Enter a no. : "
n= gets.chomp().to_i
puts o1.is_prime(n)


class Sample
	def insert_Data()
		$a=10
		$b=20
		$c="aman banduni"
	end

	def Sample.print_Data()
		puts $a
		puts $b
		puts $c
	end
end

obj1=Sample.new
Sample.print_Data()
obj1.insert_Data()
Sample.print_Data()

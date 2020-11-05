# Variable number of parameters:

def sample(*var)
	puts "Total no. of plarameters are : #{var.length}"
	for i in 0...var.length
		puts "parameter #{i+1} has value #{var[i]} "
	end
end
sample('Rajat',23,'M')
sample('Archit',22,'M','BBA')

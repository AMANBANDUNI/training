class Datatypes
	@@no_of_data_inputs_entered=0
	def initialize(name,age,gpa,ismale,istall,flaws)
		@@no_of_data_inputs_entered+=1
		@stu_name=name 			#example of string datatype
		@stu_age=age			#example of Integer datatype
		@stu_gpa=gpa			#example of Float datatype
		@stu_ismale=ismale		#example of Boolean datatype
		@stu_istall=istall		#example of Boolean datatype
		@stu_flaws=flaws		#example of nil datatype
	end

	def print_output()
		puts  "Total no. of data entered: #@@no_of_data_inputs_entered \n"
		puts "Student name: #@stu_name"
		puts "Student age: #@stu_age"
		puts "Student gpa: #@stu_gpa"
		puts "is student male: #@stu_ismale"
		puts "is student tall #@stu_istall"
		puts "student flaws: #@stu_flaws"
	end

end
stu1=Datatypes.new("ANKIT",23,8.7,true,false,nil)
stu2=Datatypes.new("Abdul",24,8.8,true,false,nil)
stu3=Datatypes.new("Shikhar",22,8.7,true,false,nil)
stu1.print_output()
print "\n"
stu2.print_output()
print "\n"
stu3.print_output()
print "\n"

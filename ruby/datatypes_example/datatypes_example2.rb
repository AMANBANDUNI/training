class Datatypes
        @@no_of_data_inputs_entered=0
        def initialize(name,age,gpa,ismale,istall,flaws)
                @@no_of_data_inputs_entered+=1
                @stu_name=name                  #example of string datatype
                @stu_age=age                    #example of Integer datatype
                @stu_gpa=gpa                    #example of Float datatype
                @stu_ismale=ismale              #example of Boolean datatype
                @stu_istall=istall              #example of Boolean datatype
                @stu_flaws=flaws                #example of nil datatype
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
        def upper_Case()
                @stu_name=@stu_name.upcase()
		puts "string in uppercase letter : #@stu_name"
        end
        def down_Case()
                @stu_name=@stu_name.downcase()
		puts ("string in downcase letter : " + @stu_name.downcase())
        end
	def length_of_string()
		@l=@stu_name.length()
		puts ("length of string = #@l")
	end
	def size_of_string()
		@s=@stu_name.size()
		puts ("size of string = #@s")
	end
	def find()
		@i=@stu_name.include? "jaiswal"
		puts @stu_name[5]
		puts ("ans= #@i")
		puts @stu_name[0,8]
		puts @stu_name.index("jai")
		num = 5
		puts ("My fav. no. is: " + num.to_s)
	end
end

stu1=Datatypes.new("ANKIT JAISWAL",23,8.7,true,false,nil)
stu2=Datatypes.new("Abdul",24,8.8,true,false,nil)
stu3=Datatypes.new("Shikhar",22,8.7,true,false,nil)
stu1.print_output()
print "\n"
stu2.print_output()
print "\n"
stu3.print_output()
print "\n"
stu2.upper_Case()
print "\n"
print "\n"
stu1.down_Case()
print "\n"
stu1.length_of_string()
print "\n"
stu1.size_of_string()
print "\n"
stu1.find()
print "\n"

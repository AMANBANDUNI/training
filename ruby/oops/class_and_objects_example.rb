class Student
   def initialize(id,name)
       @stu_id=id
       @stu_name=name
   end
   def display()
        puts "student id:  #@stu_id"
        puts "student name: #@stu_name"
   end
end
s1=Student.new("1","AMAN")
s2=Student.new("2","NIKHIL")

s1.display()
s2.display()

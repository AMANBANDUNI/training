# Nested if-else statment example.
class Age
        def initialize(age)
                @person_age=age
        end

        def status()
                if @person_age>1 && @person_age<180
                        if @person_age>1 and @person_age<14
                                puts "you are a child"
                        elsif @person_age>14 and @person_age<18
                                puts "you are a teenager"
                        else
                                puts "you are an adult"
                        end
                else
                        puts "Invalid age Entered"
                end
        end
end
print ("Enter your age: ")
c=gets()
person1=Age.new(c.to_i)
person1.status()



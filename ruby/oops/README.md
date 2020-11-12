# OOPS concept : (Oops concept are the concept used in the object oriented programming.i.e To do programming as a real world scenarios.)

=> Class and Objects
=> Abstraction
=> Encapsulation
=> Inheritance
=> Polymorphism



instance variable: Instance variable are the variable which are assigned to an object. Through Instance variable every object create 
			a copy of a variable.
	Defining Instance variable: Instance variable define by one  @ sign.
	e.g.)
	@<variable_name>
	
	Scope: Scope of this variable is within class.

	Life: Life of this variable is till the object dies.

Class Variable: Class variable are the variable which are declare in a class with two @ sign

	e.g.) @@<variable_name>

	Scope: Scope of this variable is within the class.

	Life: Life of this variabe is till the class block exist.

Global Variable: Global variable in ruby defined by one $ sign before it.

	e.g.) $<variable_name>

	Scope: Throughout the program.
	
	Life: Till the program terminates.



Abstraction: Hiding the functionality of the work from the user.

	Through the process of abstraction, a programmer hides all but the relevant data about an object in order to reduce 
		complexity and increase efficiency.




---------------------------------------------------------------------------------------------------------------------------------------------------

Create Object Using Allocate:

	There may be a situation when you want to create an object without calling its constructor initialize i.e. using new method, 
	in such case you can call allocate, which will create an uninitialized object for you as in the following example −


# define a class
class Box
   attr_accessor :width, :height

   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method
   def getArea
      @width * @height
   end
end

# create an object using new
box1 = Box.new(10, 20)

# create another object using allocate
box2 = Box.allocate

# call instance method using box1
a = box1.getArea()
puts "Area of the box is : #{a}"

# call instance method using box2
a = box2.getArea()
puts "Area of the box is : #{a}"

class Person
	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}"
	end
end


class Student < Person
	def learn
		puts "I get it!"
	end 
end

class Instructor < Person
	def teach 
		puts "Everything in Ruby is an Object"
	end
end

#QUESTION 6
chris = Instructor.new('Chris')
chris.greeting
#QUESTION 7
christina = Student.new("Christina")
christina.greeting

chris.teach
christina.learn
christina.teach #returns undefined method 'teach' for student
#this doesn't work because christina is not in the instructor class, and therefore has no access to 
#instructor methods. students also don't inherit from instructors according to this hierarchy
=begin
#step 1
class Point
	def initialize(x, y)
		@x = x
		@y = y
	end

	def to_s
		"(#{@x}, #{y}}"
end 
#getter methods | also called readers
	def x
		@x
	end 

	def y
		@y
	end

#setter methods - how we change the value of instance variables | also called writers
def x=(x) #your method is x= so it looks like you're directly assigning a variable, but you're just calling a variable to do that
	@x = x
end

def y=(y
	@y = y
end

#now you can call p.x = 5 and set x to 5

end
p = Point.new(1,2)
puts p #returns #<Point:its_address_in_memory> if you don't overwrite to_s, but gives (1,2) when you overwrite it
#.new is a class method

#step 2: you probably want to know what the location is

#when you call string, it default calls to_s before it outputs. We can overwrite that
#so we dont get the stupid its its_address_in_memory


#step 3
# instance variables are private
# unless you tell it to tell details about it, it won’t
#therefore, in order to access just the value of x or y, write a method "def x"

#step 4
#there are too many lines of code to write the getter and setter methods for each attribute

class Point
	attr_accessor :x, :y #order doesn't matter, you can do this before or after initialize, but not in it? It's good to put attr_accessor at the top
	#put initialize right after
	def initialize(x, y)
		@x = x
		@y = y
	end

end
=end

#if you don't want to let it write and only read then use attr_reader, otherwise, attr_writer
class Point
	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
end

	def to_s
		"(#{@x}, #{y}}" #you don't need to actually have the @ part of @x because you already have the reader method!!! just call the reader method by writing just x
	end

	def add(another_point) #you can refactor this -- +(another_point)
		Point.new(@x + another_point.x, @y +another_point.y) #you don't need to actually have the @ part of @x because you already have the reader method!!! just call the reader method by writing just x
	end 
end

p1 = Point.new(1,2)
p2 = Point.new(2,5)

p3 = p1.add(p2) #refactors to p1.+p2 and even p1 + p2 (special case for operators -- other methods you'd have to use the dot) because you can redefine the '+' operator
#OR: this is the less favourable way to do it because it's micromanaging. You'd rather shove off the resposibility to the Point class to do the operation.
#Also, if 'add' was suddently to change, you only have to change the method in the class as opposed to the 50 times it shows up in the code individually
#Make objects responsible for their own stuff!
p4 = Point.new(p1.x+p2.x, p1.y+p2.y)

puts p3
puts p4

class Line
	attr_reader :start_point, :end_point
	def initialize(start_point, end_point)
		@start_point = start_point
		@end_point = end_point
	end

	def to_s #overwrite to_s so puts talks about the whole line
		"#{start_point.to_s} to #{end_point.to_s}"
	end 
end

l = Line.new(p1, p2)
puts l.to_s


#TIME TO CREATE VECTORS
class Vector < Line
	attr_reader :direction
	def initialize(start_point, end_point, direction) #need all three so you don't get an argument error
		super(start_point, end_point) #MORE DRY THAN WRITING THEM OUT ALL AGAIN. # You can actually call super from any method, not just initialize
		@direction = direction
		# @start_point = start_point
		# @end_point = end_point
	end
		def to_s
			super + " -> #{direction}"
		end 
	end



v = Vector.new(p1, p2, 5) #two points, but also a direction
puts v

class Rover
	attr_accessor :upper_right, :pos, :instructions, :new_rover
	def initialize(upper_right, pos, instructions)
		@upper_right = upper_right.split(' ')
		@pos = pos.split(' ')
		@instructions = instructions.split('')
	end

	def to_s
		"#{upper_right}, #{pos}, #{instructions}"
	end

	def move
		instructions.each do |instruction|
			if instruction == "M" && pos[2] == "N"
				pos[1] = pos[1].to_i + 1
				pos[1].to_i
			elsif instruction == "M" && pos[2] == "W"
				pos[0] = pos[0].to_i - 1
				pos[0].to_i
			elsif instruction == "M" && pos[2] == "S"
				pos[1] = pos[1].to_i - 1
				pos[1].to_i
			elsif instruction == "M" && pos[2] == "E"
				pos[0] = pos[0].to_i + 1
				pos[0].to_i
			elsif instruction == "L" && pos[2] == "N"
				pos[2] = "W"
			elsif instruction == "L" && pos[2] == "E"
				pos[2] = "N"
			elsif instruction == "L" && pos[2] == "W"
				pos[2] = "S"
			elsif instruction == "L" && pos[2] == "S"
				pos[2] = "E"
			elsif instruction == "R" && pos[2] == "N"
				pos[2] = "E"
			elsif instruction == "R" && pos[2] == "E"
				pos[2] = "S"
			elsif instruction == "R" && pos[2] == "S"
				pos[2] = "W"
			elsif instruction == "R" && pos[2] == "W"
				pos[2] = "N"
			end 
		end
		puts "Output position is: #{pos}"
	end
end

r1 = Rover.new("5 5", "1 2 N", "LMLMLMLMM")
r1.move

r2 = Rover.new("5 5", "3 3 E", "MMRMMRMRRM")
r2.move

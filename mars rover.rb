#This section collects the initial input
puts "What are the upper-right coordinates of the plateau? We assume the bottom left coordinates to be (0,0)"
upper_right = gets.chomp
upper_right_a = upper_right.split(' ')
puts "You enetered #{upper_right_a}."

puts "What is the initial position of the rover?"
i_pos = gets.chomp
i_pos_a = i_pos.split(' ')
puts "You enetered #{i_pos_a}."

puts "Give your instructions telling the rover how to explore the plateau."
instructions = gets.chomp
instructions_a = instructions.split('')
puts "You enetered #{instructions_a}."

#define method that allows you to move
# def move
# 	if i_pos_a[2] == "N"
# 		instructions_a[1] += 1
# 	elsif i_pos_a[2] == "S"
# 		instructions_a[1] -= 1
# 	elsif i_pos_a[2] == "E"
# 		instructions_a[0] += 1
# 	else
# 		i_pos_a[0] -= 1
# 	end
# end

# def right
# end

# def left
# 	end

#For each instruction, execute this block of code
instructions_a.each do |instruction|
	if instruction == "M" && i_pos_a[2] == "N"
		i_pos_a[1] = i_pos_a[1].to_i + 1
		i_pos_a[1].to_i
	elsif instruction == "M" && i_pos_a[2] == "W"
		i_pos_a[0] = i_pos_a[0].to_i - 1
		i_pos_a[0].to_i
	elsif instruction == "M" && i_pos_a[2] == "S"
		i_pos_a[1] = i_pos_a[1].to_i - 1
		i_pos_a[1].to_i
	elsif instruction == "M" && i_pos_a[2] == "E"
		i_pos_a[0] = i_pos_a[0].to_i + 1
		i_pos_a[0].to_i
	elsif instruction == "L" && i_pos_a[2] == "N"
		i_pos_a[2] = "W"
	elsif instruction == "L" && i_pos_a[2] == "E"
		i_pos_a[2] = "N"
	elsif instruction == "L" && i_pos_a[2] == "W"
		i_pos_a[2] = "S"
	elsif instruction == "L" && i_pos_a[2] == "S"
		i_pos_a[2] = "E"
	elsif instruction == "R" && i_pos_a[2] == "N"
		i_pos_a[2] = "E"
	elsif instruction == "R" && i_pos_a[2] == "E"
		i_pos_a[2] = "S"
	elsif instruction == "R" && i_pos_a[2] == "S"
		i_pos_a[2] = "W"
	elsif instruction == "R" && i_pos_a[2] == "W"
		i_pos_a[2] = "N"
	end 
end 

puts i_pos_a

# 	when instruction == "M"
# 		puts i_pos_a[1] + 1
# 	when instruction == "R"
# 		right
# 	when instruction == "L"
# 		left
# 	end
# end
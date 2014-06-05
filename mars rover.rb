# plateau is an x/y grid with the following corners:
# 	bottom left: (0,0)
# 	bottom right: (0,5)
# 	top right: (5, 5)
# 	top left: (0, 5)

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
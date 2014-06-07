@array = Array.new

	def acquire_input
	print "Add an item? (Y/N)"
	confirmation = gets.chomp.upcase
	case confirmation 
		when "Y"
	 		print "Item name: "
	 		item = gets.chomp
	 		@array << item
	 		acquire_input
		else
		end
	end

def format_input
	@array.each do |item|
		item.gsub!(" at", ":")
	end
end


def print_receipt
	puts @array
end

acquire_input
format_input
print_receip
class Instruction

	def initialize; end

	def welcome

		puts " "
		puts " "
		puts "------------------------------------------------"
		puts "           Welcome to Mastermind Game           "
		puts "------------------------------------------------"
		puts "               Created by: Deepak               "
		puts " "
		puts " "
		initial_step
	end

	
	def initial_step
		puts " "
		puts "Computer has selected a random winning combo"
		puts "[ *, *, *, *]"
		puts " "
		puts "You have 12 turns to guess the right combo"
		puts "If you want to win, follow the hints carefully!"
		puts ""
		puts "Hints:"
		puts ''
	end



end


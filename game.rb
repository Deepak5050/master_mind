class Game
	attr_reader :instruction, :combo
	

	def initialize(instruction = Instruction.new, combo = Combo.new, turn = 0)
		@instruction = instruction
		@combo = combo			
	end

	def play
		instruction.welcome
		p combo.win_combo
		while combo.chance < 13
			puts "Chance: #{combo.chance}"
			combo.get_player_combo
			combo.hints

			if combo.game_over
				puts game_over_message
				return false
			end
		end 

		if !combo.game_over
			puts "You lost. Betterluck next time."
			puts "Winning Combo was #{combo.win_combo}"
		end
	end

	private
	def game_over_message
		puts "WOW, you have a mastermind. You WONNNN!"
		puts "Computer's winning combo was #{combo.win_combo}"
	end
end
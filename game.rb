class Game
	attr_reader :instruction, :combo
	

	def initialize(instruction = Instruction.new, combo = Combo.new, turn = 0)
		@instruction = instruction
		@combo = combo			
	end

	def play
		#puts welcome message
		instruction.welcome
		#game will end after 13 chances
		while combo.chance < 13
			puts "Chance: #{combo.chance}"
			#takes player input converts it into an array
			combo.get_player_combo
			#compares player input with win_combo and returns an array of hints
			combo.hints

			#if player_array equals win_combo gameover.
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
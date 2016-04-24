class Combo
	attr_reader :win_combo, :player_combo, :turn
	

	def initialize(win_combo = create_win_combo, player_combo = nil, turn = 1)
		@win_combo = win_combo
		@player_combo = player_combo
		@turn = turn
	end

	def chance
		return @turn
	end

	

	def get_player_combo
		puts "Please enter 4 digits without any space(from 1 to 8 only)"
		input = gets.chomp
		new_input = check_input(input)
		player_array = new_input.split("")
		@turn += 1
		@player_combo = player_array
	end

	def game_over
		@player_combo == win_combo
	end



	def hints
		puts "Hints: V, VP, N, N"
		puts ''
	end



	private
	def create_win_combo
		combo = []
		4.times do 
			number = 1 + rand(8)
			combo << number.to_s
		end
		combo
	end

	def check_input(input)
		while true
			if input.length != 4
				puts "Enter 4 digits. For ex:1234"
				input = gets.chomp
				return input
			end
			return input
		end
	end
	
end
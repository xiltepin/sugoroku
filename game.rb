require './player.rb'
class Game
	attr_accessor :player
	attr_accessor :board
	attr_accessor :dice


	def initialize
		# create players array as ivar
		@player_ary = Array.new
	end

	def set_board(board)
		@board = board
		# p @board
	end

	def add_player(player)
		@player =	player
		@player_ary.push(@player)

	end

	def set_dice(dice)
		@dice = dice
	end

	def start()
		@player_ary.each do |player|
			 player.roll_dice
		end
	end



end

require './player.rb'
class Game
	attr_reader :player
	attr_accessor :board
	attr_accessor :dice
	attr_reader 	:players_dice_val


	def initialize
		# create players array as ivar
		@player_ary = Array.new

	end

	def set_board(board)
		@board = board
	end

	def add_player(player)
		@player_ary.push(player)
	end

	def set_dice(dice)
		@dice = dice
	end

	def roll_dice
		@dice.roll
		# get value of dice from Dice class
		@players_dice_val = @dice.dice_value
	end

	def start()

		@player_ary.each do |player|
			#player rolls dice
			self.roll_dice
			p "Before rolling dice  '#{player.name} is in position #{player.p_position}'"

			#this is first move
			if (player.p_position <= @board.position_ary.count)
				p "'#{player.name}' dice value was '#{players_dice_val}'"

				#update position
				player.p_position = (player.p_position.to_i + players_dice_val.to_i)
				p "player '#{player.name} is now in position #{player.p_position}'"

				#loop for next action after updating position
				#get index for the each of the steps
				@board.position_ary.find{|position|position =~ player.p_position.to_i
					player.p_position = player.p_position.to_i + position.to_i
				}
				# if after moving result is more than 10, then player wins
				if(player.p_position >= @board.position_ary.count)
					p "player '#{player.name}' is now in '#{player.p_position}'wins, game is over"
					abort("Game finished")
				end


			end
		end
		#if no one wins yet, roll dices over again
		self.start()
	end
end

require './dice.rb'
class Dice
	attr_reader :dice_value

	def initialize

	end

	def set_dice

	end

	def roll
		@dice_value = Random.rand(1...6)
	end

end

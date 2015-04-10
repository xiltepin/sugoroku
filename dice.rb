require './dice.rb'
class Dice
	attr_accessor :dice_value

	def initialize

	end

	def set_dice

	end

	def roll(value)
		@dice_value = Random.rand(1...6)
	end

end

class Player
	attr_accessor :name
	attr_accessor :dice


	def initialize(name)
		@name = name
	end

	def roll_dice
		dice = Dice.new
		dice.roll
				# dice = Dice.new
		# dice.roll
		# p dice
	end



end

class Player
	attr_reader :name
	attr_reader :dice
	attr_accessor :p_position


	def initialize(name)
		@name = name
		# player starts in 0
		@p_position = 0
		p "'#{@name}' player starts in position '#{p_position}'"
	end


end

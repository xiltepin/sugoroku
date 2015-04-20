require 'csv'
class Board
	attr_reader :position
	attr_reader :steps
	attr_reader :position_ary


	def initialize(board)
		@position_ary = Array.new
		CSV.foreach(board, :headers => true) do |csv_obj|
			#create steps in array
			steps = csv_obj['steps'].to_i
			@position_ary.push(steps)
		end
	end

end

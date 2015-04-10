require 'csv'
class Board

	def initialize(board)
		CSV.foreach(board, :headers => true) do |csv_obj|

		@board = csv_obj['steps']
		# puts @board
		end
	end



end
